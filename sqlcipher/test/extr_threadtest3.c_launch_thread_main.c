
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pArg; int iTid; scalar_t__ (* xProc ) (int ,int ) ;} ;
typedef TYPE_1__ Thread ;


 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static void *launch_thread_main(void *pArg){
  Thread *p = (Thread *)pArg;
  return (void *)p->xProc(p->iTid, p->pArg);
}
