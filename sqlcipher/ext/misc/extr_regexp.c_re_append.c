
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nState; } ;
typedef TYPE_1__ ReCompiled ;


 int re_insert (TYPE_1__*,int ,int,int) ;

__attribute__((used)) static int re_append(ReCompiled *p, int op, int arg){
  return re_insert(p, p->nState, op, arg);
}
