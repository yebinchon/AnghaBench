
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_type {int dummy; } ;
struct sproto {int dummy; } ;
struct protocol {struct sproto_type** p; } ;


 struct protocol* query_proto (struct sproto const*,int) ;

struct sproto_type *
sproto_protoquery(const struct sproto *sp, int proto, int what) {
 struct protocol * p;
 if (what <0 || what >1) {
  return ((void*)0);
 }
 p = query_proto(sp, proto);
 if (p) {
  return p->p[what];
 }
 return ((void*)0);
}
