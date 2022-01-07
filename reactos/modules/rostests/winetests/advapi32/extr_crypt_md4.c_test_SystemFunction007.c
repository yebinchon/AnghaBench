
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float WCHAR ;
struct TYPE_3__ {float* Buffer; int Length; int MaximumLength; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int BYTE ;


 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int memcmp (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int ok (int,char*) ;
 int pSystemFunction007 (TYPE_1__*,int*) ;

__attribute__((used)) static void test_SystemFunction007(void)
{
    int r;
    UNICODE_STRING str;
    BYTE output[0x10];
    BYTE expected[0x10] = { 0x24, 0x0a, 0xf0, 0x9d, 0x84, 0x1c, 0xda, 0xcf,
                            0x56, 0xeb, 0x6b, 0x96, 0x55, 0xec, 0xcf, 0x0a };
    WCHAR szFoo[] = {'f','o','o',0 };

    if (0)
    {

    r = pSystemFunction007(((void*)0), ((void*)0));
    ok( r == STATUS_UNSUCCESSFUL, "wrong error code\n");
    }

    str.Buffer = szFoo;
    str.Length = 4*sizeof(WCHAR);
    str.MaximumLength = str.Length;

    memset(output, 0, sizeof output);
    r = pSystemFunction007(&str, output);
    ok( r == STATUS_SUCCESS, "wrong error code\n");

    ok(!memcmp(output, expected, sizeof expected), "response wrong\n");
}
