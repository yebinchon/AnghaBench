
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * k; } ;
typedef int TValue ;
typedef TYPE_1__ Proto ;


 size_t INDEXK (int) ;
 scalar_t__ ISK (int) ;
 char* getobjname (TYPE_1__*,int,int,char const**) ;
 char* svalue (int *) ;
 scalar_t__ ttisstring (int *) ;

__attribute__((used)) static void kname (Proto *p, int pc, int c, const char **name) {
  if (ISK(c)) {
    TValue *kvalue = &p->k[INDEXK(c)];
    if (ttisstring(kvalue)) {
      *name = svalue(kvalue);
      return;
    }

  }
  else {
    const char *what = getobjname(p, pc, c, name);
    if (what && *what == 'c') {
      return;
    }

  }
  *name = "?";
}
