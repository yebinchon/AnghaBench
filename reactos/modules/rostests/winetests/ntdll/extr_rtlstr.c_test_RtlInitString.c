
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int teststring ;
struct TYPE_3__ {int Length; int MaximumLength; char const* Buffer; } ;
typedef TYPE_1__ STRING ;


 int ok (int,char*) ;
 int pRtlInitString (TYPE_1__*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void test_RtlInitString(void)
{
    static const char teststring[] = "Some Wild String";
    STRING str;

    str.Length = 0;
    str.MaximumLength = 0;
    str.Buffer = (void *)0xdeadbeef;
    pRtlInitString(&str, teststring);
    ok(str.Length == sizeof(teststring) - sizeof(char), "Length uninitialized\n");
    ok(str.MaximumLength == sizeof(teststring), "MaximumLength uninitialized\n");
    ok(str.Buffer == teststring, "Buffer not equal to teststring\n");
    ok(strcmp(str.Buffer, "Some Wild String") == 0, "Buffer written to\n");
    pRtlInitString(&str, ((void*)0));
    ok(str.Length == 0, "Length uninitialized\n");
    ok(str.MaximumLength == 0, "MaximumLength uninitialized\n");
    ok(str.Buffer == ((void*)0), "Buffer not equal to NULL\n");

}
