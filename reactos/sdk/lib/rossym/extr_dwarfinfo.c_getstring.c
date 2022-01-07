
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_9__ {TYPE_2__* d; } ;
struct TYPE_7__ {scalar_t__ data; int len; } ;
struct TYPE_8__ {TYPE_1__ str; } ;
typedef TYPE_3__ DwarfBuf ;




 int dwarfget4 (TYPE_3__*) ;
 char* dwarfgetstring (TYPE_3__*) ;
 char* nil ;
 int werrstr (char*,int ) ;

__attribute__((used)) static int
getstring(DwarfBuf *b, int form, char **s)
{
 static int nbad;
 ulong u;

 switch(form){
 default:
  return -1;

 case 129:
  *s = dwarfgetstring(b);
  return 0;

 case 128:
  u = dwarfget4(b);
  if(u >= b->d->str.len){
   if(++nbad == 1)
    werrstr("dwarf: bad string pointer 0x%lux in attribute", u);

   *s = nil;
  }else
   *s = (char*)b->d->str.data + u;
  return 0;

 }
}
