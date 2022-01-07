
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; char* Buffer; int base; int value; } ;
typedef TYPE_1__ ulonglong2str_t ;
typedef char* LPSTR ;


 int LARGE_STRI_BUFFER_LENGTH ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,int,int ,int ,char*,char*) ;
 char* p_i64toa (int ,char*,int ) ;
 int wine_dbgstr_longlong (int ) ;

__attribute__((used)) static void one_i64toa_test(int test_num, const ulonglong2str_t *ulonglong2str)
{
    LPSTR result;
    char dest_str[LARGE_STRI_BUFFER_LENGTH + 1];

    memset(dest_str, '-', LARGE_STRI_BUFFER_LENGTH);
    dest_str[LARGE_STRI_BUFFER_LENGTH] = '\0';
    result = p_i64toa(ulonglong2str->value, dest_str, ulonglong2str->base);
    ok(result == dest_str,
       "(test %d): _i64toa(%s, [out], %d) has result %p, expected: %p\n",
       test_num, wine_dbgstr_longlong(ulonglong2str->value), ulonglong2str->base, result, dest_str);
    if (ulonglong2str->mask & 0x04) {
 if (memcmp(dest_str, ulonglong2str->Buffer, LARGE_STRI_BUFFER_LENGTH) != 0) {
     if (memcmp(dest_str, ulonglong2str[1].Buffer, LARGE_STRI_BUFFER_LENGTH) != 0) {
  ok(memcmp(dest_str, ulonglong2str->Buffer, LARGE_STRI_BUFFER_LENGTH) == 0,
     "(test %d): _i64toa(%s, [out], %d) assigns string \"%s\", expected: \"%s\"\n",
     test_num, wine_dbgstr_longlong(ulonglong2str->value),
                   ulonglong2str->base, dest_str, ulonglong2str->Buffer);
     }
 }
    } else {
 ok(memcmp(dest_str, ulonglong2str->Buffer, LARGE_STRI_BUFFER_LENGTH) == 0,
    "(test %d): _i64toa(%s, [out], %d) assigns string \"%s\", expected: \"%s\"\n",
    test_num, wine_dbgstr_longlong(ulonglong2str->value),
           ulonglong2str->base, dest_str, ulonglong2str->Buffer);
    }
}
