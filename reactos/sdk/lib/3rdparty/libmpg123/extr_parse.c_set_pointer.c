
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bitindex; scalar_t__ fsizeold; scalar_t__ bsbufold; scalar_t__ wordpointer; scalar_t__ ssize; scalar_t__ bsbuf; } ;
typedef TYPE_1__ mpg123_handle ;


 int memcpy (scalar_t__,scalar_t__,long) ;

void set_pointer(mpg123_handle *fr, long backstep)
{
 fr->wordpointer = fr->bsbuf + fr->ssize - backstep;
 if (backstep)
 memcpy(fr->wordpointer,fr->bsbufold+fr->fsizeold-backstep,backstep);

 fr->bitindex = 0;
}
