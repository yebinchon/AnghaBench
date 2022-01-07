
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union sigval {TYPE_2__* sival_ptr; } ;
struct itimerspec {int dummy; } ;
struct TYPE_7__ {int ft_arg; int ft_tid; int * ft_hdl; } ;
typedef TYPE_2__ fmd_timer_t ;
struct TYPE_8__ {TYPE_1__* mod_info; } ;
typedef TYPE_3__ fmd_module_t ;
typedef int fmd_hdl_t ;
struct TYPE_9__ {int (* fmdo_timeout ) (int *,TYPE_2__*,int ) ;} ;
typedef TYPE_4__ fmd_hdl_ops_t ;
struct TYPE_6__ {TYPE_4__* fmdi_ops; } ;


 int bzero (struct itimerspec*,int) ;
 int fmd_hdl_debug (int *,char*,int ) ;
 int stub1 (int *,TYPE_2__*,int ) ;
 int timer_settime (int ,int ,struct itimerspec*,int *) ;

__attribute__((used)) static void
_timer_notify(union sigval sv)
{
 fmd_timer_t *ftp = sv.sival_ptr;
 fmd_hdl_t *hdl = ftp->ft_hdl;
 fmd_module_t *mp = (fmd_module_t *)hdl;
 const fmd_hdl_ops_t *ops = mp->mod_info->fmdi_ops;
 struct itimerspec its;

 fmd_hdl_debug(hdl, "timer fired (%p)", ftp->ft_tid);


 bzero(&its, sizeof (struct itimerspec));
 timer_settime(ftp->ft_tid, 0, &its, ((void*)0));


 if (ops->fmdo_timeout != ((void*)0))
  ops->fmdo_timeout(hdl, ftp, ftp->ft_arg);
}
