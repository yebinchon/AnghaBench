
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int INT ;


 int hex_to_int (char const) ;
 scalar_t__ is_hexdigit (char const) ;

__attribute__((used)) static WCHAR decode_pct_val(const WCHAR *ptr) {
    WCHAR ret = '\0';

    if(*ptr == '%' && is_hexdigit(*(ptr + 1)) && is_hexdigit(*(ptr + 2))) {
        INT a = hex_to_int(*(ptr + 1));
        INT b = hex_to_int(*(ptr + 2));

        ret = a << 4;
        ret += b;
    }

    return ret;
}
