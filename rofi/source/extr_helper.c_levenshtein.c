
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ gunichar ;
typedef int glong ;
struct TYPE_2__ {int case_sensitive; } ;


 int const G_MAXLONG ;
 unsigned int MIN3 (unsigned int,unsigned int,int) ;
 unsigned int UINT_MAX ;
 TYPE_1__ config ;
 scalar_t__ g_unichar_tolower (scalar_t__) ;
 scalar_t__ g_utf8_get_char (char const*) ;
 char* g_utf8_next_char (char const*) ;

unsigned int levenshtein ( const char *needle, const glong needlelen, const char *haystack, const glong haystacklen )
{
    if ( needlelen == G_MAXLONG ) {

        return UINT_MAX;
    }
    unsigned int column[needlelen + 1];
    for ( glong y = 0; y < needlelen; y++ ) {
        column[y] = y;
    }


    column[needlelen] = needlelen;
    for ( glong x = 1; x <= haystacklen; x++ ) {
        const char *needles = needle;
        column[0] = x;
        gunichar haystackc = g_utf8_get_char ( haystack );
        if ( !config.case_sensitive ) {
            haystackc = g_unichar_tolower ( haystackc );
        }
        for ( glong y = 1, lastdiag = x - 1; y <= needlelen; y++ ) {
            gunichar needlec = g_utf8_get_char ( needles );
            if ( !config.case_sensitive ) {
                needlec = g_unichar_tolower ( needlec );
            }
            unsigned int olddiag = column[y];
            column[y] = MIN3 ( column[y] + 1, column[y - 1] + 1, lastdiag + ( needlec == haystackc ? 0 : 1 ) );
            lastdiag = olddiag;
            needles = g_utf8_next_char ( needles );
        }
        haystack = g_utf8_next_char ( haystack );
    }
    return column[needlelen];
}
