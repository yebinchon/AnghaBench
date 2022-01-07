
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned long long uint64_t ;
struct TYPE_11__ {size_t cAttr; TYPE_2__* rgAttr; } ;
struct TYPE_14__ {TYPE_3__ UnauthAttrs; } ;
struct TYPE_12__ {size_t cbData; int * pbData; } ;
struct TYPE_13__ {TYPE_4__ Content; } ;
struct TYPE_10__ {TYPE_1__* rgValue; int pszObjId; } ;
struct TYPE_9__ {int cbData; int pbData; } ;
typedef int PVOID ;
typedef TYPE_5__* PCRYPT_CONTENT_INFO ;
typedef TYPE_6__* PCMSG_SIGNER_INFO ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,int ,size_t*) ;
 int DumpBufferHex (char*,size_t) ;
 scalar_t__ FALSE ;
 int LocalFree (TYPE_5__*) ;
 int PKCS_7_ASN_ENCODING ;
 int PKCS_CONTENT_INFO ;
 scalar_t__ TRUE ;
 int WinPKIErrorString () ;
 void* get_data_from_asn1 (int *,size_t,int *,int,size_t*) ;
 scalar_t__ lstrcmpA (int ,int ) ;
 unsigned long long strtoull (char*,int *,int) ;
 int szOID_RFC3161_counterSign ;
 int * szOID_TIMESTAMP_TOKEN ;
 int uprintf (char*,...) ;

__attribute__((used)) static uint64_t GetRFC3161TimeStamp(PCMSG_SIGNER_INFO pSignerInfo)
{
 BOOL r, found = FALSE;
 DWORD n, dwSize = 0;
 PCRYPT_CONTENT_INFO pCounterSignerInfo = ((void*)0);
 uint64_t ts = 0ULL;
 uint8_t *timestamp_token;
 size_t timestamp_token_size;
 char* timestamp_str;
 size_t timestamp_str_size;


 for (n = 0; n < pSignerInfo->UnauthAttrs.cAttr; n++) {
  if (lstrcmpA(pSignerInfo->UnauthAttrs.rgAttr[n].pszObjId, szOID_RFC3161_counterSign) == 0) {



   if (found) {
    uprintf("PKI: Multiple RFC 3161 countersigners found. This could indicate something very nasty...");
    return 0ULL;
   }
   found = TRUE;


   r = CryptDecodeObjectEx(PKCS_7_ASN_ENCODING, PKCS_CONTENT_INFO,
    pSignerInfo->UnauthAttrs.rgAttr[n].rgValue[0].pbData,
    pSignerInfo->UnauthAttrs.rgAttr[n].rgValue[0].cbData,
    CRYPT_DECODE_ALLOC_FLAG, ((void*)0), (PVOID)&pCounterSignerInfo, &dwSize);
   if (!r) {
    uprintf("PKI: Could not retrieve RFC 3161 countersigner data: %s", WinPKIErrorString());
    continue;
   }


   timestamp_token = get_data_from_asn1(pCounterSignerInfo->Content.pbData,
    pCounterSignerInfo->Content.cbData, szOID_TIMESTAMP_TOKEN,

    0x04, &timestamp_token_size);
   if (timestamp_token) {
    timestamp_str = get_data_from_asn1(timestamp_token, timestamp_token_size, ((void*)0),

     0x18, &timestamp_str_size);
    if (timestamp_str) {

     if ((timestamp_str_size < 14) || (timestamp_str[timestamp_str_size - 1] != 'Z')) {

      uprintf("PKI: Not an RFC 3161 timestamp");
      DumpBufferHex(timestamp_str, timestamp_str_size);
     } else {
      ts = strtoull(timestamp_str, ((void*)0), 10);
     }
    }
   }
   LocalFree(pCounterSignerInfo);
  }
 }
 return ts;
}
