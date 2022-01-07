
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * k; } ;
typedef TYPE_1__ Proto ;


 size_t INDEXK (int) ;
 scalar_t__ ISK (int) ;
 char const* svalue (int *) ;
 scalar_t__ ttisstring (int *) ;

__attribute__((used)) static const char *kname (Proto *p, int c) {
  if (ISK(c) && ttisstring(&p->k[INDEXK(c)]))
    return svalue(&p->k[INDEXK(c)]);
  else
    return "?";
}
