
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int num; unsigned int den; } ;
struct TYPE_6__ {unsigned int num; unsigned int den; } ;
struct TYPE_7__ {unsigned int width; unsigned int height; TYPE_1__ sar; } ;
struct TYPE_9__ {TYPE_3__ zoom; TYPE_2__ display; } ;
typedef TYPE_4__ vout_display_cfg_t ;
typedef int video_orientation_t ;


 scalar_t__ ORIENT_IS_SWAP (int ) ;
 int assert (int) ;

__attribute__((used)) static void vout_display_SizeWindow(unsigned *restrict width,
                                    unsigned *restrict height,
                                    unsigned w, unsigned h,
                                    unsigned sar_num, unsigned sar_den,
                                    video_orientation_t orientation,
                                    const vout_display_cfg_t *restrict cfg)
{
    *width = cfg->display.width;
    *height = cfg->display.height;


    if (*width != 0 && *height != 0)
        return;


    assert(sar_num > 0 && sar_den > 0);
    w = (w * sar_num) / sar_den;


    if (ORIENT_IS_SWAP(orientation)) {
        unsigned x = w;

        w = h;
        h = x;
    }

    if (cfg->display.sar.num > 0 && cfg->display.sar.den > 0)
        w = (w * cfg->display.sar.den) / cfg->display.sar.num;


    if (*width != 0) {
        *height = (*width * h) / w;
        return;
    }


    if (*height != 0) {
        *width = (*height * w) / h;
        return;
    }


    *width = (w * cfg->zoom.num) / cfg->zoom.den;
    *height = (h * cfg->zoom.num) / cfg->zoom.den;
}
