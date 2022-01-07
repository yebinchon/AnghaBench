
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _flag; int * _base; } ;
typedef int TCHAR ;
typedef TYPE_1__ FILE ;


 int MB_CUR_MAX ;
 int _IOSTRG ;
 int mbtowc (int *,char const*,int ) ;
 scalar_t__ streamout_char (TYPE_1__*,int ) ;

__attribute__((used)) static
int
streamout_astring(FILE *stream, const char *string, size_t count)
{
    TCHAR chr;
    int written = 0;


     if ((stream->_flag & _IOSTRG) && (stream->_base == ((void*)0)))
        return count;


    while (count--)
    {





        chr = *string++;

        if (streamout_char(stream, chr) == 0) return -1;
        written++;
    }

    return written;
}
