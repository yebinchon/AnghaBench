
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_7__ {scalar_t__ p; scalar_t__ ep; TYPE_2__* d; } ;
struct TYPE_6__ {TYPE_1__* pe; } ;
struct TYPE_5__ {int (* e2 ) (scalar_t__) ;} ;
typedef TYPE_3__ DwarfBuf ;


 scalar_t__ nil ;
 int stub1 (scalar_t__) ;

ulong
dwarfget2(DwarfBuf *b)
{
 ulong v;

 if(b->p==nil || b->p+2 > b->ep){
  b->p = nil;
  return 0;
 }
 v = b->d->pe->e2(b->p);
 b->p += 2;
 return v;
}
