
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int* Buffer; int Length; int MaximumLength; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int LONG ;


 int FALSE ;
 int TRUE ;
 int ok (int,char*,int,int,int) ;
 int pRtlCompareUnicodeString (TYPE_1__*,TYPE_1__*,int ) ;
 int pRtlCompareUnicodeStrings (int*,int,int*,int,int ) ;
 int pRtlUpcaseUnicodeChar (int) ;

__attribute__((used)) static void test_RtlCompareUnicodeString(void)
{
    WCHAR ch1, ch2;
    UNICODE_STRING str1, str2;

    str1.Buffer = &ch1;
    str1.Length = str1.MaximumLength = sizeof(WCHAR);
    str2.Buffer = &ch2;
    str2.Length = str2.MaximumLength = sizeof(WCHAR);
    for (ch1 = 0; ch1 < 512; ch1++)
    {
        for (ch2 = 0; ch2 < 1024; ch2++)
        {
            LONG res = pRtlCompareUnicodeString( &str1, &str2, FALSE );
            ok( res == (ch1 - ch2), "wrong result %d %04x %04x\n", res, ch1, ch2 );
            res = pRtlCompareUnicodeString( &str1, &str2, TRUE );
            ok( res == (pRtlUpcaseUnicodeChar(ch1) - pRtlUpcaseUnicodeChar(ch2)),
                "wrong result %d %04x %04x\n", res, ch1, ch2 );
            if (pRtlCompareUnicodeStrings)
            {
                res = pRtlCompareUnicodeStrings( &ch1, 1, &ch2, 1, FALSE );
                ok( res == (ch1 - ch2), "wrong result %d %04x %04x\n", res, ch1, ch2 );
                res = pRtlCompareUnicodeStrings( &ch1, 1, &ch2, 1, TRUE );
                ok( res == (pRtlUpcaseUnicodeChar(ch1) - pRtlUpcaseUnicodeChar(ch2)),
                    "wrong result %d %04x %04x\n", res, ch1, ch2 );
            }
        }
    }
}
