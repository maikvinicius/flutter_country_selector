import 'package:phone_numbers_parser/metadata.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

/// Country regroup informations for displaying a list of countries
class LocalizedCountry {
  /// Country alpha-2 iso code
  final IsoCode isoCode;

  /// localized name of the country
  final String name;

  /// country dialing code to call them internationally
  final String dialCode;

  /// returns "+ [dialCode]"
  String get formattedCountryDialingCode => '+ $dialCode';

  LocalizedCountry(this.isoCode, this.name)
      : dialCode = metadataByIsoCode[isoCode]?.countryCode ?? '';

  @override
  String toString() {
    return '$runtimeType(isoCode: $isoCode, dialCode: $dialCode, name: $name)';
  }
}
