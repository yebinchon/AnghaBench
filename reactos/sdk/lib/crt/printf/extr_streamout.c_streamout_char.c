
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _flag; int _cnt; scalar_t__ _ptr; int * _base; } ;
typedef int TCHAR ;
typedef TYPE_1__ FILE ;


 int _IOSTRG ;
 scalar_t__ _TEOF ;
 scalar_t__ _fputtc (int,TYPE_1__*) ;

__attribute__((used)) static
int
streamout_char(FILE *stream, int chr)
{

     if ((stream->_flag & _IOSTRG) && (stream->_base == ((void*)0)))
        return 1;
    return _fputtc((TCHAR)chr, stream) != _TEOF;

}
