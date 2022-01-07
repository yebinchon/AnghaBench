
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ p; scalar_t__ ep; } ;
typedef TYPE_1__ DwarfBuf ;


 scalar_t__ nil ;

void
dwarfskip(DwarfBuf *b, int n)
{
 if(b->p==nil || b->p+n > b->ep)
  b->p = nil;
 else
  b->p += n;
}
