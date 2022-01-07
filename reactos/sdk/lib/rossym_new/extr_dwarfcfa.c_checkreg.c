
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long nr; } ;
typedef TYPE_1__ State ;


 int werrstr (char*,long) ;

__attribute__((used)) static int
checkreg(State *s, long r)
{
 if(r < 0 || r >= s->nr){
  werrstr("bad register number 0x%lx", r);
  return -1;
 }
 return 0;
}
