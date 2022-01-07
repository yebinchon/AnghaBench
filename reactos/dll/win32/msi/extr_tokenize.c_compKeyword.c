
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int name; } ;
typedef TYPE_1__ Keyword ;


 int memicmpW (int ,int ,int) ;
 int min (int ,int ) ;

__attribute__((used)) static int compKeyword(const void *m1, const void *m2){
  const Keyword *k1 = m1, *k2 = m2;
  int ret, len = min( k1->len, k2->len );

  if ((ret = memicmpW( k1->name, k2->name, len ))) return ret;
  if (k1->len < k2->len) return -1;
  else if (k1->len > k2->len) return 1;
  return 0;
}
