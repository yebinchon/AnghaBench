
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int error_string ;
typedef int DWORD ;


 int BOOL ;
 int GetLastError () ;
 int HRESULT_CODE (int ) ;
 int INTERNET_ERROR_BASE ;
 int INTERNET_ERROR_LAST ;
 int InternetGetLastResponseInfoA ;
 int LPDWORD ;
 int LPSTR ;
 int PF_INIT (int ,int ) ;
 int PF_TYPE_DECL (int ,int ,int ,int ) ;
 int WINAPI ;
 int WinInet ;
 char const* WindowsErrorString () ;
 int error_code ;
 int pfInternetGetLastResponseInfoA (int*,char*,int*) ;
 int static_sprintf (char*,char*,int) ;

const char* WinInetErrorString(void)
{
 static char error_string[256];
 DWORD size = sizeof(error_string);
 PF_TYPE_DECL(WINAPI, BOOL, InternetGetLastResponseInfoA, (LPDWORD, LPSTR, LPDWORD));
 PF_INIT(InternetGetLastResponseInfoA, WinInet);

 error_code = HRESULT_CODE(GetLastError());

 if ((error_code < INTERNET_ERROR_BASE) || (error_code > INTERNET_ERROR_LAST))
  return WindowsErrorString();

 switch(error_code) {
 case 147:
  return "No more handles could be generated at this time.";
 case 131:
  return "The request has timed out.";
 case 165:
  return "An internal error has occurred.";
 case 161:
  return "The URL is invalid.";
 case 128:
  return "The URL scheme could not be recognized or is not supported.";
 case 156:
  return "The server name could not be resolved.";
 case 145:
  return "The requested protocol could not be located.";
 case 163:
  return "A request specified an invalid option value.";
 case 184:
  return "The length of an option supplied is incorrect for the type of option specified.";
 case 148:
  return "The request option cannot be set, only queried.";
 case 133:
  return "The Win32 Internet function support is being shut down or unloaded.";
 case 166:
  return "The request to connect and log on to an FTP server could not be completed because the supplied user name is incorrect.";
 case 167:
  return "The request to connect and log on to an FTP server could not be completed because the supplied password is incorrect.";
 case 159:
  return "The request to connect to and log on to an FTP server failed.";
 case 164:
  return "The requested operation is invalid.";
 case 149:
  return "The operation was cancelled, usually because the handle on which the request was operating was closed before the operation completed.";
 case 168:
  return "The type of handle supplied is incorrect for this operation.";
 case 169:
  return "The requested operation cannot be carried out because the handle supplied is not in the correct state.";
 case 153:
  return "The request cannot be made via a proxy.";
 case 143:
  return "A required registry value could not be located.";
 case 183:
  return "A required registry value was located but is an incorrect type or has an invalid value.";
 case 150:
  return "Direct network access cannot be made at this time.";
 case 151:
  return "An asynchronous request could not be made because a zero context value was supplied.";
 case 152:
  return "An asynchronous request could not be made because a callback function has not been set.";
 case 142:
  return "The required operation could not be completed because one or more requests are pending.";
 case 170:
  return "The format of the request is invalid.";
 case 160:
  return "The requested item could not be located.";
 case 182:
  return "The attempt to connect to the server failed.";
 case 179:
  return "The connection with the server has been terminated.";
 case 178:
  return "The connection with the server has been reset.";
 case 174:
  return "Calls for the Win32 Internet function to redo the request.";
 case 162:
  return "The request to the proxy was invalid.";
 case 173:
  return "The request failed because the handle already exists.";
 case 135:
  return "The SSL certificate is invalid.";
 case 139:
  return "SSL certificate date that was received from the server is bad. The certificate is expired.";
 case 140:
  return "SSL certificate common name (host name field) is incorrect.";
 case 138:
  return "The SSL certificate contains errors.";
 case 137:
  return "The SSL certificate was not revoked.";
 case 136:
  return "The revocation check of the SSL certificate failed.";
 case 171:
  return "The application is moving from a non-SSL to an SSL connection because of a redirect.";
 case 172:
  return "The application is moving from an SSL to an non-SSL connection because of a redirect.";
 case 157:
  return "Some of the content being viewed may have come from unsecured servers.";
 case 181:
  return "The application is posting and attempting to change multiple lines of text on a server that is not secure.";
 case 146:
  return "The application is posting data to a server that is not secure.";
 case 202:
  return "The requested operation cannot be made on the FTP session handle because an operation is already in progress.";
 case 203:
  return "The FTP operation was not completed because the session was aborted.";
 case 194:
 case 196:
 case 200:
 case 199:
 case 197:
 case 198:
 case 195:
 case 201:
 case 193:
  return "Gopher? Really??? What is this, 1994?";
 case 190:
  return "The requested header could not be located.";
 case 192:
  return "The server did not return any headers.";
 case 187:
  return "The server response could not be parsed.";
 case 189:
  return "The supplied header is invalid.";
 case 188:
  return "The request made to HttpQueryInfo is invalid.";
 case 191:
  return "The header could not be added because it already exists.";
 case 186:
  return "The redirection failed because either the scheme changed or all attempts made to redirect failed.";
 case 141:
  return "This system's SSL library is too old to be able to access this website.";
 case 180:
  return "Client Authentication certificate needed";
 case 185:
  return "Bad auto proxy script.";
 case 129:
  return "Unable to download script.";
 case 154:
  return "Internet has not be initialized.";
 case 130:
  return "Unable to cache the file.";
 case 132:
  return "TPC/IP not installed.";
 case 177:
  return "Internet is disconnected.";
 case 134:
  return "Server could not be reached.";
 case 144:
  return "Proxy server could not be reached.";
 case 175:
  return "A security check prevented internet connection.";
 case 155:
  return "This connection requires an MSN Security Support Provider Interface package.";
 case 158:
  return "Please ask Microsoft about that one!";
 case 176:
  if (pfInternetGetLastResponseInfoA != ((void*)0)) {
   pfInternetGetLastResponseInfoA(&error_code, error_string, &size);
   return error_string;
  }

 default:
  static_sprintf(error_string, "Unknown internet error 0x%08lX", error_code);
  return error_string;
 }
}
