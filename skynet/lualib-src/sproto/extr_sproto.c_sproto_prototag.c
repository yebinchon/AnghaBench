
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sproto {int protocol_n; TYPE_1__* proto; } ;
struct TYPE_2__ {int tag; int name; } ;


 scalar_t__ strcmp (char const*,int ) ;

int
sproto_prototag(const struct sproto *sp, const char * name) {
 int i;
 for (i=0;i<sp->protocol_n;i++) {
  if (strcmp(name, sp->proto[i].name) == 0) {
   return sp->proto[i].tag;
  }
 }
 return -1;
}
