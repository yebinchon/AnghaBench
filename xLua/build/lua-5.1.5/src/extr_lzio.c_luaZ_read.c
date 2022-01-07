
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t n; size_t p; } ;
typedef TYPE_1__ ZIO ;


 scalar_t__ EOZ ;
 scalar_t__ luaZ_lookahead (TYPE_1__*) ;
 int memcpy (void*,size_t,size_t) ;

size_t luaZ_read (ZIO *z, void *b, size_t n) {
  while (n) {
    size_t m;
    if (luaZ_lookahead(z) == EOZ)
      return n;
    m = (n <= z->n) ? n : z->n;
    memcpy(b, z->p, m);
    z->n -= m;
    z->p += m;
    b = (char *)b + m;
    n -= m;
  }
  return 0;
}
