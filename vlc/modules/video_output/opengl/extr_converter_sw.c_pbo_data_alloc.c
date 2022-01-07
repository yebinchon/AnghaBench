
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int i_planes; TYPE_3__* p_sys; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_9__ {int * buffers; int * bytes; } ;
typedef TYPE_3__ picture_sys_t ;
struct TYPE_10__ {TYPE_1__* vt; int gl; } ;
typedef TYPE_4__ opengl_tex_converter_t ;
struct TYPE_7__ {scalar_t__ (* GetError ) () ;int (* DeleteBuffers ) (int,int *) ;int (* BufferData ) (int ,int ,int *,int ) ;int (* BindBuffer ) (int ,int ) ;} ;


 int GL_DYNAMIC_DRAW ;
 scalar_t__ GL_NO_ERROR ;
 int GL_PIXEL_UNPACK_BUFFER ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int ,char*) ;
 scalar_t__ stub1 () ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int *,int ) ;
 scalar_t__ stub4 () ;
 int stub5 (int,int *) ;

__attribute__((used)) static int
pbo_data_alloc(const opengl_tex_converter_t *tc, picture_t *pic)
{
    picture_sys_t *picsys = pic->p_sys;

    tc->vt->GetError();

    for (int i = 0; i < pic->i_planes; ++i)
    {
        tc->vt->BindBuffer(GL_PIXEL_UNPACK_BUFFER, picsys->buffers[i]);
        tc->vt->BufferData(GL_PIXEL_UNPACK_BUFFER, picsys->bytes[i], ((void*)0),
                            GL_DYNAMIC_DRAW);

        if (tc->vt->GetError() != GL_NO_ERROR)
        {
            msg_Err(tc->gl, "could not alloc PBO buffers");
            tc->vt->DeleteBuffers(i, picsys->buffers);
            return VLC_EGENERIC;
        }
    }
    return VLC_SUCCESS;
}
