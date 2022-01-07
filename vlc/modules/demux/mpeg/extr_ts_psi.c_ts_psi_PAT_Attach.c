
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_pat; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ i_pid; TYPE_2__ u; } ;
typedef TYPE_3__ ts_pid_t ;
struct TYPE_5__ {int handle; } ;


 int PATCallBack ;
 scalar_t__ TS_PSI_PAT_PID ;
 scalar_t__ TYPE_PAT ;
 int dvbpsi_pat_attach (int ,int ,void*) ;
 scalar_t__ unlikely (int) ;

bool ts_psi_PAT_Attach( ts_pid_t *patpid, void *cbdata )
{
    if( unlikely(patpid->type != TYPE_PAT || patpid->i_pid != TS_PSI_PAT_PID) )
        return 0;
    return dvbpsi_pat_attach( patpid->u.p_pat->handle, PATCallBack, cbdata );
}
