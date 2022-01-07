
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* jp2_pclr; } ;
typedef TYPE_1__ opj_jp2_color_t ;
struct TYPE_5__ {struct TYPE_5__* cmap; struct TYPE_5__* entries; struct TYPE_5__* channel_size; struct TYPE_5__* channel_sign; } ;


 int opj_free (TYPE_3__*) ;

__attribute__((used)) static void opj_jp2_free_pclr(opj_jp2_color_t *color)
{
    opj_free(color->jp2_pclr->channel_sign);
    opj_free(color->jp2_pclr->channel_size);
    opj_free(color->jp2_pclr->entries);

    if (color->jp2_pclr->cmap) {
        opj_free(color->jp2_pclr->cmap);
    }

    opj_free(color->jp2_pclr);
    color->jp2_pclr = ((void*)0);
}
