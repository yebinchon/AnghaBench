
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto {int dummy; } ;
struct protocol {char const* name; } ;


 struct protocol* query_proto (struct sproto const*,int) ;

const char *
sproto_protoname(const struct sproto *sp, int proto) {
 struct protocol * p = query_proto(sp, proto);
 if (p) {
  return p->name;
 }
 return ((void*)0);
}
