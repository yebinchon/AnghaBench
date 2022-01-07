
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int val; scalar_t__* encoded; } ;
typedef size_t DWORD ;
typedef int BOOL ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int GetLastError () ;
 TYPE_1__* enumeratedTypes ;
 TYPE_1__* enums ;
 int ok (int,char*,int,...) ;
 int pCryptDecodeObjectEx (size_t,TYPE_1__,scalar_t__*,scalar_t__,int ,int *,int*,size_t*) ;

__attribute__((used)) static void test_decodeEnumerated(DWORD dwEncoding)
{
    DWORD i, j;

    for (i = 0; i < ARRAY_SIZE(enumeratedTypes); i++)
    {
        for (j = 0; j < ARRAY_SIZE(enums); j++)
        {
            BOOL ret;
            DWORD bufSize = sizeof(int);
            int val;

            ret = pCryptDecodeObjectEx(dwEncoding, enumeratedTypes[i],
             enums[j].encoded, enums[j].encoded[1] + 2, 0, ((void*)0),
             &val, &bufSize);
            ok(ret, "CryptDecodeObjectEx failed: %08x\n", GetLastError());
            ok(bufSize == sizeof(int),
             "Got unexpected size %d for enumerated\n", bufSize);
            ok(val == enums[j].val, "Unexpected value %d, expected %d\n",
             val, enums[j].val);
        }
    }
}
