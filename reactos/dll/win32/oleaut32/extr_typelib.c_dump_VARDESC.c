
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oInst; } ;
struct TYPE_5__ {int varkind; int wVarFlags; int elemdescVar; TYPE_1__ u; int lpstrSchema; int memid; } ;
typedef TYPE_2__ VARDESC ;


 int MESSAGE (char*,int ) ;
 int debugstr_w (int ) ;
 int dump_ELEMDESC (int *) ;

__attribute__((used)) static void dump_VARDESC(const VARDESC *v)
{
    MESSAGE("memid %d\n",v->memid);
    MESSAGE("lpstrSchema %s\n",debugstr_w(v->lpstrSchema));
    MESSAGE("oInst %d\n",v->u.oInst);
    dump_ELEMDESC(&(v->elemdescVar));
    MESSAGE("wVarFlags %x\n",v->wVarFlags);
    MESSAGE("varkind %d\n",v->varkind);
}
