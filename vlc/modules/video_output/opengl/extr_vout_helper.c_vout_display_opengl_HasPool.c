
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* prgm; } ;
typedef TYPE_2__ vout_display_opengl_t ;
struct TYPE_7__ {int * pf_get_pool; } ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_5__ {TYPE_3__* tc; } ;



bool vout_display_opengl_HasPool(const vout_display_opengl_t *vgl)
{
    opengl_tex_converter_t *tc = vgl->prgm->tc;
    return tc->pf_get_pool != ((void*)0);
}
