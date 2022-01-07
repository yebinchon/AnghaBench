
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
typedef int uchar ;
struct TYPE_3__ {scalar_t__ p; scalar_t__ ep; } ;
typedef TYPE_1__ DwarfBuf ;


 int * nil ;

uchar*
dwarfgetnref(DwarfBuf *b, ulong n)
{
 uchar *p;

 if(b->p==nil || b->p+n > b->ep){
  b->p = nil;
  return nil;
 }
 p = b->p;
 b->p += n;
 return p;
}
