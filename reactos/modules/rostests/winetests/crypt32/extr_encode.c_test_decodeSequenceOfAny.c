
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__* encoded; } ;
struct TYPE_8__ {scalar_t__* encodedTime; } ;
struct TYPE_7__ {scalar_t__ cValue; TYPE_1__* rgValue; } ;
struct TYPE_6__ {scalar_t__ cbData; int pbData; } ;
typedef size_t DWORD ;
typedef TYPE_2__ CRYPT_SEQUENCE_OF_ANY ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ARRAY_SIZE (TYPE_4__*) ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 int GetLastError () ;
 int LocalFree (int *) ;
 int X509_SEQUENCE_OF_ANY ;
 scalar_t__* intSequence ;
 TYPE_4__* ints ;
 int memcmp (int ,scalar_t__*,scalar_t__) ;
 size_t min (scalar_t__,scalar_t__) ;
 scalar_t__* mixedSequence ;
 int ok (int,char*,...) ;
 int pCryptDecodeObjectEx (size_t,int ,scalar_t__*,scalar_t__,int ,int *,int **,size_t*) ;
 TYPE_3__* times ;

__attribute__((used)) static void test_decodeSequenceOfAny(DWORD dwEncoding)
{
    BOOL ret;
    BYTE *buf = ((void*)0);
    DWORD bufSize = 0;

    ret = pCryptDecodeObjectEx(dwEncoding, X509_SEQUENCE_OF_ANY, intSequence,
     intSequence[1] + 2, CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &buf, &bufSize);
    ok(ret, "CryptDecodeObjectEx failed: %08x\n", GetLastError());
    if (ret)
    {
        CRYPT_SEQUENCE_OF_ANY *seq = (CRYPT_SEQUENCE_OF_ANY *)buf;
        DWORD i;

        ok(seq->cValue == ARRAY_SIZE(ints), "Wrong elements %d\n", seq->cValue);
        for (i = 0; i < min(seq->cValue, ARRAY_SIZE(ints)); i++)
        {
            ok(seq->rgValue[i].cbData == ints[i].encoded[1] + 2,
             "Expected %d bytes, got %d\n", ints[i].encoded[1] + 2,
             seq->rgValue[i].cbData);
            ok(!memcmp(seq->rgValue[i].pbData, ints[i].encoded,
             ints[i].encoded[1] + 2), "Unexpected value\n");
        }
        LocalFree(buf);
    }
    ret = pCryptDecodeObjectEx(dwEncoding, X509_SEQUENCE_OF_ANY, mixedSequence,
     mixedSequence[1] + 2, CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &buf,
     &bufSize);
    ok(ret, "CryptDecodeObjectEx failed: %08x\n", GetLastError());
    if (ret)
    {
        CRYPT_SEQUENCE_OF_ANY *seq = (CRYPT_SEQUENCE_OF_ANY *)buf;

        ok(seq->cValue == ARRAY_SIZE(ints), "Wrong elements %d\n", seq->cValue);

        ok(seq->rgValue[0].cbData == times[0].encodedTime[1] + 2,
         "Expected %d bytes, got %d\n", times[0].encodedTime[1] + 2,
         seq->rgValue[0].cbData);
        ok(!memcmp(seq->rgValue[0].pbData, times[0].encodedTime,
         times[0].encodedTime[1] + 2), "Unexpected value\n");
        LocalFree(buf);
    }
}
