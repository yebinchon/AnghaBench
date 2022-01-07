
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int teststring ;
typedef int WCHAR ;
struct TYPE_3__ {int Length; int MaximumLength; int const* Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;


 int * STRINGW ;
 scalar_t__ lstrcmpW (int const*,int const*) ;
 int ok (int,char*) ;
 int pRtlInitUnicodeString (TYPE_1__*,int const*) ;

__attribute__((used)) static void test_RtlInitUnicodeString(void)
{

    static const WCHAR teststring[] = {'S','o','m','e',' ','W','i','l','d',' ','S','t','r','i','n','g',0};
    static const WCHAR originalstring[] = {'S','o','m','e',' ','W','i','l','d',' ','S','t','r','i','n','g',0};

    UNICODE_STRING uni;

    uni.Length = 0;
    uni.MaximumLength = 0;
    uni.Buffer = (void *)0xdeadbeef;
    pRtlInitUnicodeString(&uni, teststring);
    ok(uni.Length == sizeof(teststring) - sizeof(WCHAR), "Length uninitialized\n");
    ok(uni.MaximumLength == sizeof(teststring), "MaximumLength uninitialized\n");
    ok(uni.Buffer == teststring, "Buffer not equal to teststring\n");
    ok(lstrcmpW(uni.Buffer, originalstring) == 0, "Buffer written to\n");
    pRtlInitUnicodeString(&uni, ((void*)0));
    ok(uni.Length == 0, "Length uninitialized\n");
    ok(uni.MaximumLength == 0, "MaximumLength uninitialized\n");
    ok(uni.Buffer == ((void*)0), "Buffer not equal to NULL\n");

}
