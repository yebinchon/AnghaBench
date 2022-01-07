
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int (* DeleteProgram ) (scalar_t__) ;} ;
struct TYPE_11__ {TYPE_1__ vt; } ;
typedef TYPE_3__ vout_display_opengl_t ;
struct prgm {scalar_t__ id; TYPE_4__* tc; } ;
struct TYPE_10__ {int pl_vars; } ;
struct TYPE_12__ {scalar_t__ pl_ctx; TYPE_2__ uloc; int * priv; int * p_module; } ;
typedef TYPE_4__ opengl_tex_converter_t ;


 int FREENULL (int ) ;
 int module_unneed (TYPE_4__*,int *) ;
 int opengl_tex_converter_generic_deinit (TYPE_4__*) ;
 int pl_context_destroy (scalar_t__*) ;
 int stub1 (scalar_t__) ;
 int vlc_object_delete (TYPE_4__*) ;

__attribute__((used)) static void
opengl_deinit_program(vout_display_opengl_t *vgl, struct prgm *prgm)
{
    opengl_tex_converter_t *tc = prgm->tc;
    if (tc->p_module != ((void*)0))
        module_unneed(tc, tc->p_module);
    else if (tc->priv != ((void*)0))
        opengl_tex_converter_generic_deinit(tc);
    if (prgm->id != 0)
        vgl->vt.DeleteProgram(prgm->id);







    vlc_object_delete(tc);
}
