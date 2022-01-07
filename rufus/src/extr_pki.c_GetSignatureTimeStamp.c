
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef long long uint64_t ;
typedef int * PVOID ;
typedef char* PCMSG_SIGNER_INFO ;
typedef int * HMODULE ;
typedef int * HCRYPTMSG ;
typedef int * HCERTSTORE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED_EMBED ;
 int CERT_QUERY_FORMAT_FLAG_BINARY ;
 int CERT_QUERY_OBJECT_FILE ;
 int CMSG_SIGNER_INFO_PARAM ;
 int CertCloseStore (int *,int ) ;
 int CryptMsgClose (int *) ;
 scalar_t__ CryptMsgGetParam (int *,int ,int ,int *,scalar_t__*) ;
 scalar_t__ CryptQueryObject (int ,char*,int ,int ,int ,scalar_t__*,scalar_t__*,scalar_t__*,int **,int **,int *) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetModuleFileNameW (int *,char*,scalar_t__) ;
 int * GetModuleHandle (int *) ;
 long long GetNestedRFC3161TimeStamp (char*) ;
 long long GetRFC3161TimeStamp (char*) ;
 scalar_t__ MAX_PATH ;
 int TimestampToHumanReadable (long long) ;
 int WinPKIErrorString () ;
 int _abs64 (long long) ;
 char* calloc (scalar_t__,int) ;
 int safe_free (char*) ;
 int uprintf (char*,...) ;
 char* utf8_to_wchar (char const*) ;
 char* wchar_to_utf8 (char*) ;

uint64_t GetSignatureTimeStamp(const char* path)
{
 char *mpath = ((void*)0);
 BOOL r;
 HMODULE hm;
 HCERTSTORE hStore = ((void*)0);
 HCRYPTMSG hMsg = ((void*)0);
 DWORD dwSize, dwEncoding, dwContentType, dwFormatType;
 PCMSG_SIGNER_INFO pSignerInfo = ((void*)0);
 DWORD dwSignerInfo = 0;
 wchar_t *szFileName;
 uint64_t timestamp = 0ULL, nested_timestamp;


 if (path == ((void*)0)) {
  szFileName = calloc(MAX_PATH, sizeof(wchar_t));
  if (szFileName == ((void*)0))
   goto out;
  hm = GetModuleHandle(((void*)0));
  if (hm == ((void*)0)) {
   uprintf("PKI: Could not get current executable handle: %s", WinPKIErrorString());
   goto out;
  }
  dwSize = GetModuleFileNameW(hm, szFileName, MAX_PATH);
  if ((dwSize == 0) || ((dwSize == MAX_PATH) && (GetLastError() == ERROR_INSUFFICIENT_BUFFER))) {
   uprintf("PKI: Could not get module filename: %s", WinPKIErrorString());
   goto out;
  }
  mpath = wchar_to_utf8(szFileName);
 } else {
  szFileName = utf8_to_wchar(path);
 }


 r = CryptQueryObject(CERT_QUERY_OBJECT_FILE, szFileName,
  CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED_EMBED, CERT_QUERY_FORMAT_FLAG_BINARY,
  0, &dwEncoding, &dwContentType, &dwFormatType, &hStore, &hMsg, ((void*)0));
 if (!r) {
  uprintf("PKI: Failed to get signature for '%s': %s", (path==((void*)0))?mpath:path, WinPKIErrorString());
  goto out;
 }


 r = CryptMsgGetParam(hMsg, CMSG_SIGNER_INFO_PARAM, 0, ((void*)0), &dwSignerInfo);
 if (!r) {
  uprintf("PKI: Failed to get signer size: %s", WinPKIErrorString());
  goto out;
 }


 pSignerInfo = (PCMSG_SIGNER_INFO)calloc(dwSignerInfo, 1);
 if (!pSignerInfo) {
  uprintf("PKI: Could not allocate memory for signer information");
  goto out;
 }


 r = CryptMsgGetParam(hMsg, CMSG_SIGNER_INFO_PARAM, 0, (PVOID)pSignerInfo, &dwSignerInfo);
 if (!r) {
  uprintf("PKI: Failed to get signer information: %s", WinPKIErrorString());
  goto out;
 }


 timestamp = GetRFC3161TimeStamp(pSignerInfo);
 if (timestamp)
  uprintf("Note: '%s' has timestamp %s", (path==((void*)0))?mpath:path, TimestampToHumanReadable(timestamp));
 nested_timestamp = GetNestedRFC3161TimeStamp(pSignerInfo);
 if (nested_timestamp)
  uprintf("Note: '%s' has nested timestamp %s", (path==((void*)0))?mpath:path, TimestampToHumanReadable(nested_timestamp));
 if ((timestamp != 0ULL) && (nested_timestamp != 0ULL)) {
  if (_abs64(nested_timestamp - timestamp) > 100) {
   uprintf("PKI: Signature timestamp and nested timestamp differ by more than a minute. "
    "This could indicate something very nasty...", timestamp, nested_timestamp);
   timestamp = 0ULL;
  }
 }

out:
 safe_free(mpath);
 safe_free(szFileName);
 safe_free(pSignerInfo);
 if (hStore != ((void*)0))
  CertCloseStore(hStore, 0);
 if (hMsg != ((void*)0))
  CryptMsgClose(hMsg);
 return timestamp;
}
