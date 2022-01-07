
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_3__ {scalar_t__ p; scalar_t__ ep; } ;
typedef TYPE_1__ DwarfBuf ;


 int memmove (int *,scalar_t__,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ nil ;

int
dwarfgetn(DwarfBuf *b, uchar *a, int n)
{
 if(b->p==nil || b->p+n > b->ep){
  b->p = nil;
  memset(a, 0, n);
  return -1;
 }
 memmove(a, b->p, n);
 b->p += n;
 return 0;
}
