
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int _flag; int * _base; } ;
typedef TYPE_1__ FILE ;


 int MB_CUR_MAX ;
 int _IOSTRG ;
 scalar_t__ streamout_char (TYPE_1__*,int) ;
 int wctomb (char*,int ) ;

__attribute__((used)) static
int
streamout_wstring(FILE *stream, const wchar_t *string, size_t count)
{
    wchar_t chr;
    int written = 0;






    while (count--)
    {

        char mbchar[MB_CUR_MAX], *ptr = mbchar;
        int mblen;

        mblen = wctomb(mbchar, *string++);
        if (mblen <= 0) return written;

        while (chr = *ptr++, mblen--)



        {
            if (streamout_char(stream, chr) == 0) return -1;
            written++;
        }
    }

    return written;
}
