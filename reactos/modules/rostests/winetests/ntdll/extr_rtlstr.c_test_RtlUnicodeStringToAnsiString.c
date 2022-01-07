
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {int * Buffer; int MaximumLength; int Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_9__ {scalar_t__ ansi_Length; scalar_t__ ansi_MaximumLength; size_t ansi_buf_size; int uni_buf_size; scalar_t__ result; scalar_t__ res_Length; scalar_t__ res_MaximumLength; scalar_t__ res_buf; scalar_t__ doalloc; int res_buf_size; int * uni_buf; int uni_MaximumLength; int uni_Length; int * ansi_buf; } ;
struct TYPE_8__ {scalar_t__ Length; scalar_t__ MaximumLength; char* Buffer; } ;
typedef TYPE_2__ STRING ;
typedef scalar_t__ NTSTATUS ;
typedef char CHAR ;


 unsigned int NB_USTR2ASTR ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ memcmp (char*,scalar_t__,int ) ;
 int memcpy (char*,int *,size_t) ;
 int ok (int,char*,unsigned int,scalar_t__,scalar_t__,scalar_t__) ;
 int pRtlFreeAnsiString (TYPE_2__*) ;
 scalar_t__ pRtlUnicodeStringToAnsiString (TYPE_2__*,TYPE_1__*,scalar_t__) ;
 TYPE_3__* ustr2astr ;

__attribute__((used)) static void test_RtlUnicodeStringToAnsiString(void)
{
    size_t pos;
    CHAR ansi_buf[257];
    WCHAR uni_buf[257];
    STRING ansi_str;
    UNICODE_STRING uni_str;
    NTSTATUS result;
    unsigned int test_num;

    for (test_num = 0; test_num < NB_USTR2ASTR; test_num++) {
 ansi_str.Length = ustr2astr[test_num].ansi_Length;
 ansi_str.MaximumLength = ustr2astr[test_num].ansi_MaximumLength;
 if (ustr2astr[test_num].ansi_buf != ((void*)0)) {
     memcpy(ansi_buf, ustr2astr[test_num].ansi_buf, ustr2astr[test_num].ansi_buf_size);
     ansi_buf[ustr2astr[test_num].ansi_buf_size] = '\0';
     ansi_str.Buffer = ansi_buf;
 } else {
     ansi_str.Buffer = ((void*)0);
 }
 uni_str.Length = ustr2astr[test_num].uni_Length;
 uni_str.MaximumLength = ustr2astr[test_num].uni_MaximumLength;
 if (ustr2astr[test_num].uni_buf != ((void*)0)) {
     for (pos = 0; pos < ustr2astr[test_num].uni_buf_size/sizeof(WCHAR); pos++) {
  uni_buf[pos] = ustr2astr[test_num].uni_buf[pos];
     }
     uni_str.Buffer = uni_buf;
 } else {
     uni_str.Buffer = ((void*)0);
 }
 result = pRtlUnicodeStringToAnsiString(&ansi_str, &uni_str, ustr2astr[test_num].doalloc);
 ok(result == ustr2astr[test_num].result,
           "(test %d): RtlUnicodeStringToAnsiString(ansi, uni, %d) has result %x, expected %x\n",
    test_num, ustr2astr[test_num].doalloc, result, ustr2astr[test_num].result);
 ok(ansi_str.Length == ustr2astr[test_num].res_Length,
    "(test %d): RtlUnicodeStringToAnsiString(ansi, uni, %d) ansi has Length %d, expected %d\n",
    test_num, ustr2astr[test_num].doalloc, ansi_str.Length, ustr2astr[test_num].res_Length);
 ok(ansi_str.MaximumLength == ustr2astr[test_num].res_MaximumLength,
    "(test %d): RtlUnicodeStringToAnsiString(ansi, uni, %d) ansi has MaximumLength %d, expected %d\n",
    test_num, ustr2astr[test_num].doalloc, ansi_str.MaximumLength, ustr2astr[test_num].res_MaximumLength);
 ok(memcmp(ansi_str.Buffer, ustr2astr[test_num].res_buf, ustr2astr[test_num].res_buf_size) == 0,
    "(test %d): RtlUnicodeStringToAnsiString(ansi, uni, %d) has ansi \"%s\" expected \"%s\"\n",
    test_num, ustr2astr[test_num].doalloc, ansi_str.Buffer, ustr2astr[test_num].res_buf);
        if(result == STATUS_SUCCESS && ustr2astr[test_num].doalloc)
            pRtlFreeAnsiString(&ansi_str);
    }
}
