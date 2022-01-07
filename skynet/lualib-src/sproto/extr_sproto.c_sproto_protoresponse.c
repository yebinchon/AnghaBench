
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto {int dummy; } ;
struct protocol {scalar_t__ confirm; scalar_t__* p; } ;


 size_t SPROTO_RESPONSE ;
 struct protocol* query_proto (struct sproto const*,int) ;

int
sproto_protoresponse(const struct sproto * sp, int proto) {
 struct protocol * p = query_proto(sp, proto);
 return (p!=((void*)0) && (p->p[SPROTO_RESPONSE] || p->confirm));
}
