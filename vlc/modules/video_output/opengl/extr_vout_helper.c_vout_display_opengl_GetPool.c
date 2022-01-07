
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int texture; int * pool; TYPE_1__* prgm; } ;
typedef TYPE_2__ vout_display_opengl_t ;
typedef int picture_pool_t ;
struct TYPE_9__ {int * (* pf_get_pool ) (TYPE_3__*,unsigned int) ;} ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_7__ {TYPE_3__* tc; } ;


 int DelTextures (TYPE_3__*,int ) ;
 int GL_ASSERT_NOERROR () ;
 int VLCGL_PICTURE_MAX ;
 unsigned int __MIN (int ,unsigned int) ;
 int assert (int ) ;
 int * stub1 (TYPE_3__*,unsigned int) ;

picture_pool_t *vout_display_opengl_GetPool(vout_display_opengl_t *vgl, unsigned requested_count)
{
    GL_ASSERT_NOERROR();

    if (vgl->pool)
        return vgl->pool;

    opengl_tex_converter_t *tc = vgl->prgm->tc;
    requested_count = __MIN(VLCGL_PICTURE_MAX, requested_count);

    assert(tc->pf_get_pool != ((void*)0));
    vgl->pool = tc->pf_get_pool(tc, requested_count);
    if (!vgl->pool)
        goto error;
    return vgl->pool;

error:
    DelTextures(tc, vgl->texture);
    return ((void*)0);
}
