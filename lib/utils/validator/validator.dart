class Appvalidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    //regular expression foe email validation

    final emailRegEx = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegEx.hasMatch(value)) {
      return 'Invald email address';
    }
    return null;
  }

  static String? validatepassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    if (value.length < 6) {
      return 'Password must atleast 6 characters long';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'password must contain one uppercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'password must contain atleast one number';
    }
    if (!value.contains(RegExp(r'[!@#$%^&*()<>?":{}|<>]'))) {
      return 'password must contain atleast one special character';
    }
    return null;
  }

  static String? validatePhonenumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'phone number is required';
    }
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).';
    }
    return null;
  }
}
