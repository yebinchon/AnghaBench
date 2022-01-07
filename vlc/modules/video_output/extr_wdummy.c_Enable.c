
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_window_t ;
struct TYPE_3__ {int height; int width; } ;
typedef TYPE_1__ vout_window_cfg_t ;


 int VLC_SUCCESS ;
 int vout_window_ReportSize (int *,int ,int ) ;

__attribute__((used)) static int Enable(vout_window_t *wnd, const vout_window_cfg_t *cfg)
{
    vout_window_ReportSize(wnd, cfg->width, cfg->height);
    return VLC_SUCCESS;
}
