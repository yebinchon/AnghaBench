
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ cExtension; TYPE_4__* rgExtension; } ;
struct TYPE_15__ {scalar_t__* encoded; TYPE_5__ exts; } ;
struct TYPE_14__ {scalar_t__ cExtension; TYPE_2__* rgExtension; } ;
struct TYPE_11__ {int cbData; int pbData; } ;
struct TYPE_12__ {TYPE_3__ Value; int pszObjId; } ;
struct TYPE_9__ {int pbData; } ;
struct TYPE_10__ {TYPE_1__ Value; int pszObjId; } ;
typedef size_t DWORD ;
typedef TYPE_6__ CERT_EXTENSIONS ;
typedef int BYTE ;
typedef int BOOL ;


 size_t ARRAY_SIZE (TYPE_7__*) ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,int *) ;
 int LocalFree (int *) ;
 int X509_EXTENSIONS ;
 TYPE_7__* exts ;
 int memcmp (int ,int ,int ) ;
 size_t min (scalar_t__,scalar_t__) ;
 int ok (int,char*,...) ;
 int pCryptDecodeObjectEx (size_t,int ,scalar_t__*,scalar_t__,int ,int *,int *,size_t*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void test_decodeExtensions(DWORD dwEncoding)
{
    DWORD i;

    for (i = 0; i < ARRAY_SIZE(exts); i++)
    {
        BOOL ret;
        BYTE *buf = ((void*)0);
        DWORD bufSize = 0;

        ret = pCryptDecodeObjectEx(dwEncoding, X509_EXTENSIONS,
         exts[i].encoded, exts[i].encoded[1] + 2, CRYPT_DECODE_ALLOC_FLAG,
         ((void*)0), &buf, &bufSize);
        ok(ret, "CryptDecodeObjectEx failed: %08x\n", GetLastError());
        if (ret)
        {
            CERT_EXTENSIONS *ext = (CERT_EXTENSIONS *)buf;
            DWORD j;

            ok(ext->cExtension == exts[i].exts.cExtension,
             "Expected %d extensions, see %d\n", exts[i].exts.cExtension,
             ext->cExtension);
            for (j = 0; j < min(ext->cExtension, exts[i].exts.cExtension); j++)
            {
                ok(!strcmp(ext->rgExtension[j].pszObjId,
                 exts[i].exts.rgExtension[j].pszObjId),
                 "Expected OID %s, got %s\n",
                 exts[i].exts.rgExtension[j].pszObjId,
                 ext->rgExtension[j].pszObjId);
                ok(!memcmp(ext->rgExtension[j].Value.pbData,
                 exts[i].exts.rgExtension[j].Value.pbData,
                 exts[i].exts.rgExtension[j].Value.cbData),
                 "Unexpected value\n");
            }
            LocalFree(buf);
        }
        ret = pCryptDecodeObjectEx(dwEncoding, X509_EXTENSIONS,
         exts[i].encoded, exts[i].encoded[1] + 2, 0, ((void*)0), ((void*)0), &bufSize);
        ok(ret, "CryptDecodeObjectEx failed: %08x\n", GetLastError());
        buf = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, bufSize);
        if (buf)
        {
            ret = pCryptDecodeObjectEx(dwEncoding, X509_EXTENSIONS,
             exts[i].encoded, exts[i].encoded[1] + 2, 0, ((void*)0), buf, &bufSize);
            ok(ret, "CryptDecodeObjectEx failed: %08x\n", GetLastError());
            HeapFree(GetProcessHeap(), 0, buf);
        }
    }
}
