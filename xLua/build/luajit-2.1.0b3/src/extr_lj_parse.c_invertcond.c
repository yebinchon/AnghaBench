
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int info; } ;
struct TYPE_10__ {TYPE_2__ s; } ;
struct TYPE_12__ {TYPE_3__ u; } ;
struct TYPE_11__ {TYPE_1__* bcbase; } ;
struct TYPE_8__ {int ins; } ;
typedef TYPE_4__ FuncState ;
typedef TYPE_5__ ExpDesc ;
typedef int BCIns ;


 int bc_op (int ) ;
 int setbc_op (int *,int) ;

__attribute__((used)) static void invertcond(FuncState *fs, ExpDesc *e)
{
  BCIns *ip = &fs->bcbase[e->u.s.info - 1].ins;
  setbc_op(ip, bc_op(*ip)^1);
}
