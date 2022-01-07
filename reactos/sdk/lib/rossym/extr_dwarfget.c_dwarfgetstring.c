
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* p; char* ep; } ;
typedef TYPE_1__ DwarfBuf ;


 char* nil ;

char*
dwarfgetstring(DwarfBuf *b)
{
 char *s;

 if(b->p == nil)
  return nil;
 s = (char*)b->p;
 while(b->p < b->ep && *b->p)
  b->p++;
 if(b->p >= b->ep){
  b->p = nil;
  return nil;
 }
 b->p++;
 return s;
}
