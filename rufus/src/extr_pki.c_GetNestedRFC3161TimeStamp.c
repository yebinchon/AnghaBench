
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_13__ {size_t cAttr; TYPE_2__* rgAttr; } ;
struct TYPE_16__ {TYPE_3__ UnauthAttrs; } ;
struct TYPE_14__ {int cbData; int pbData; } ;
struct TYPE_15__ {TYPE_4__ Content; } ;
struct TYPE_12__ {TYPE_1__* rgValue; int pszObjId; } ;
struct TYPE_11__ {int cbData; int pbData; } ;
typedef int * PVOID ;
typedef TYPE_5__* PCRYPT_CONTENT_INFO ;
typedef TYPE_6__* PCMSG_SIGNER_INFO ;
typedef int HCRYPTPROV ;
typedef int * HCRYPTMSG ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 int CMSG_DETACHED_FLAG ;
 int CMSG_SIGNED ;
 int CMSG_SIGNER_INFO_PARAM ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,int *,size_t*) ;
 int CryptMsgClose (int *) ;
 scalar_t__ CryptMsgGetParam (int *,int ,int ,int *,size_t*) ;
 int * CryptMsgOpenToDecode (int ,int ,int ,int ,int *,int *) ;
 scalar_t__ CryptMsgUpdate (int *,int ,int ,scalar_t__) ;
 int ENCODING ;
 scalar_t__ FALSE ;
 unsigned long long GetRFC3161TimeStamp (TYPE_6__*) ;
 int LocalFree (TYPE_5__*) ;
 int PKCS_7_ASN_ENCODING ;
 int PKCS_CONTENT_INFO ;
 scalar_t__ TRUE ;
 int WinPKIErrorString () ;
 scalar_t__ calloc (size_t,int) ;
 scalar_t__ lstrcmpA (int ,int ) ;
 int safe_free (TYPE_6__*) ;
 int szOID_NESTED_SIGNATURE ;
 int uprintf (char*,...) ;

__attribute__((used)) static uint64_t GetNestedRFC3161TimeStamp(PCMSG_SIGNER_INFO pSignerInfo)
{
 BOOL r, found = FALSE;
 DWORD n, dwSize = 0;
 PCRYPT_CONTENT_INFO pNestedSignature = ((void*)0);
 PCMSG_SIGNER_INFO pNestedSignerInfo = ((void*)0);
 HCRYPTMSG hMsg = ((void*)0);
 uint64_t ts = 0ULL;


 for (n = 0; ; n++) {
  if (pNestedSignature != ((void*)0)) {
   LocalFree(pNestedSignature);
   pNestedSignature = ((void*)0);
  }
  if (hMsg != ((void*)0)) {
   CryptMsgClose(hMsg);
   hMsg = ((void*)0);
  }
  safe_free(pNestedSignerInfo);
  if (n >= pSignerInfo->UnauthAttrs.cAttr)
   break;
  if (lstrcmpA(pSignerInfo->UnauthAttrs.rgAttr[n].pszObjId, szOID_NESTED_SIGNATURE) == 0) {
   if (found) {
    uprintf("PKI: Multiple nested signatures found. This could indicate something very nasty...");
    return 0ULL;
   }
   found = TRUE;
   r = CryptDecodeObjectEx(PKCS_7_ASN_ENCODING, PKCS_CONTENT_INFO,
    pSignerInfo->UnauthAttrs.rgAttr[n].rgValue[0].pbData,
    pSignerInfo->UnauthAttrs.rgAttr[n].rgValue[0].cbData,
    CRYPT_DECODE_ALLOC_FLAG, ((void*)0), (PVOID)&pNestedSignature, &dwSize);
   if (!r) {
    uprintf("PKI: Could not retrieve nested signature data: %s", WinPKIErrorString());
    continue;
   }

   hMsg = CryptMsgOpenToDecode(ENCODING, CMSG_DETACHED_FLAG, CMSG_SIGNED, (HCRYPTPROV)((void*)0), ((void*)0), ((void*)0));
   if (hMsg == ((void*)0)) {
    uprintf("PKI: Could not create nested signature message: %s", WinPKIErrorString());
    continue;
   }
   r = CryptMsgUpdate(hMsg, pNestedSignature->Content.pbData, pNestedSignature->Content.cbData, TRUE);
   if (!r) {
    uprintf("PKI: Could not update message: %s", WinPKIErrorString());
    continue;
   }

   r = CryptMsgGetParam(hMsg, CMSG_SIGNER_INFO_PARAM, 0, ((void*)0), &dwSize);
   if (!r) {
    uprintf("PKI: Failed to get nested signer size: %s", WinPKIErrorString());
    continue;
   }
   pNestedSignerInfo = (PCMSG_SIGNER_INFO)calloc(dwSize, 1);
   if (!pNestedSignerInfo) {
    uprintf("PKI: Could not allocate memory for nested signer");
    continue;
   }
   r = CryptMsgGetParam(hMsg, CMSG_SIGNER_INFO_PARAM, 0, (PVOID)pNestedSignerInfo, &dwSize);
   if (!r) {
    uprintf("PKI: Failed to get nested signer information: %s", WinPKIErrorString());
    continue;
   }
   ts = GetRFC3161TimeStamp(pNestedSignerInfo);
  }
 }
 return ts;
}
