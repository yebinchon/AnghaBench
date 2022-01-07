
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_9__ {int addrsize; int p; TYPE_1__* d; } ;
struct TYPE_8__ {int addrsize; } ;
typedef TYPE_2__ DwarfBuf ;


 int dwarfget1 (TYPE_2__*) ;
 int dwarfget2 (TYPE_2__*) ;
 int dwarfget4 (TYPE_2__*) ;
 int dwarfget8 (TYPE_2__*) ;
 int nil ;
 int werrstr (char*,int) ;

ulong
dwarfgetaddr(DwarfBuf *b)
{
 static int nbad;

 if(b->addrsize == 0)
  b->addrsize = b->d->addrsize;

 switch(b->addrsize){
 case 1:
  return dwarfget1(b);
 case 2:
  return dwarfget2(b);
 case 4:
  return dwarfget4(b);
 case 8:
  return dwarfget8(b);
 default:
  if(++nbad == 1)
   werrstr("dwarf: unexpected address size %lud in dwarfgetaddr\n", b->addrsize);
  b->p = nil;
  return 0;
 }
}
