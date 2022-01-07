
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
 int GetLastError () ;
 char const* WindowsErrorString () ;
 int static_sprintf (char*,char*,int) ;

const char* WinPKIErrorString(void)
{
 static char error_string[64];
 DWORD error_code = GetLastError();

 if (((error_code >> 16) != 0x8009) && ((error_code >> 16) != 0x800B))
  return WindowsErrorString();

 switch (error_code) {

 case 133:
  return "Bad UID.";
 case 131:
  return "Key does not exist.";
 case 135:
  return "Keyset does not exist.";
 case 136:
  return "Invalid algorithm specified.";
 case 132:
  return "Bad version of provider.";
 case 134:
  return "Invalid Signature.";
 case 155:
  return "An error occurred while performing an operation on a cryptographic message.";
 case 138:
  return "Unknown cryptographic algorithm.";
 case 160:
  return "Invalid cryptographic message type.";
 case 162:
  return "The hash value is not correct";
 case 156:
  return "Invalid issuer and/or serial number.";
 case 167:
  return "The length specified for the output data was insufficient.";
 case 168:
  return "An error occurred during encode or decode operation.";
 case 163:
  return "An error occurred while reading or writing to a file.";
 case 153:
  return "Cannot find object or property.";
 case 164:
  return "The object or property already exists.";
 case 148:
  return "No provider was specified for the store or object.";
 case 165:
  return "The previous certificate or CRL context was deleted.";
 case 149:
  return "Cannot find the requested object.";
 case 139:
 case 150:
 case 151:
  return "Private key or certificate issue";
 case 166:
  return "Not a cryptographic message.";
 case 145:
  return "The signed cryptographic message does not have a signer for the specified signer index.";
 case 141:
  return "The certificate is revoked.";
 case 146:
 case 147:
 case 142:
 case 152:
  return "Cannot check certificate revocation.";
 case 159:
 case 158:
 case 161:
 case 157:
 case 154:
  return "Invalid string.";
 case 140:
  return "The cryptographic operation failed due to a local security option setting.";
 case 143:
 case 137:
  return "Cannot complete usage check.";
 case 144:
  return "None of the signers of the cryptographic message or certificate trust list is trusted.";
 case 169:
  return "The root certificate is not trusted.";
 case 129:
  return "Not digitally signed.";
 case 130:
  return "One of the certificates used was marked as untrusted by the user.";
 case 128:
  return "The timestamp could not be verified.";
 default:
  static_sprintf(error_string, "Unknown PKI error 0x%08lX", error_code);
  return error_string;
 }
}
