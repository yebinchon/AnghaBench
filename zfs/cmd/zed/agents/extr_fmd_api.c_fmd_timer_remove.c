
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ft_tid; } ;
typedef TYPE_1__ fmd_timer_t ;
typedef int fmd_hdl_t ;


 int fmd_hdl_debug (int *,char*,int ) ;
 int fmd_hdl_free (int *,TYPE_1__*,int) ;
 int timer_delete (int ) ;

void
fmd_timer_remove(fmd_hdl_t *hdl, fmd_timer_t *ftp)
{
 fmd_hdl_debug(hdl, "removing timer (%p)", ftp->ft_tid);

 timer_delete(ftp->ft_tid);

 fmd_hdl_free(hdl, ftp, sizeof (fmd_timer_t));
}
