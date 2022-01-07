
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int (* DrawElements ) (int ,int ,int ,int ) ;int (* UniformMatrix4fv ) (int ,int,int ,int ) ;int (* VertexAttribPointer ) (int,int,int ,int ,int ,int ) ;int (* EnableVertexAttribArray ) (int) ;int (* BindBuffer ) (int ,int ) ;int (* BindTexture ) (int ,scalar_t__) ;int (* ActiveTexture ) (scalar_t__) ;} ;
struct TYPE_17__ {scalar_t__* texture; int nb_indices; TYPE_6__ vt; int index_buffer_object; int vertex_buffer_object; int * texture_buffer_object; TYPE_2__* prgm; int tex_height; int tex_width; } ;
typedef TYPE_7__ vout_display_opengl_t ;
struct TYPE_15__ {int ZoomMatrix; int ViewMatrix; int ProjectionMatrix; int OrientationMatrix; } ;
struct TYPE_14__ {int ZoomMatrix; int ViewMatrix; int ProjectionMatrix; int OrientationMatrix; } ;
struct TYPE_13__ {int* MultiTexCoord; int VertexPosition; } ;
struct prgm {TYPE_5__ var; TYPE_4__ uloc; TYPE_3__ aloc; TYPE_8__* tc; } ;
struct TYPE_18__ {int tex_target; int (* pf_prepare_shader ) (TYPE_8__*,int ,int ,float) ;} ;
typedef TYPE_8__ opengl_tex_converter_t ;
struct TYPE_12__ {TYPE_1__* tc; } ;
struct TYPE_11__ {unsigned int tex_count; } ;


 int GL_ARRAY_BUFFER ;
 int GL_ELEMENT_ARRAY_BUFFER ;
 int GL_FALSE ;
 int GL_FLOAT ;
 scalar_t__ GL_TEXTURE0 ;
 int GL_TRIANGLES ;
 int GL_UNSIGNED_SHORT ;
 int assert (int) ;
 int stub1 (TYPE_8__*,int ,int ,float) ;
 int stub10 (int,int,int ,int ,int ,int ) ;
 int stub11 (int ,int,int ,int ) ;
 int stub12 (int ,int,int ,int ) ;
 int stub13 (int ,int,int ,int ) ;
 int stub14 (int ,int,int ,int ) ;
 int stub15 (int ,int ,int ,int ) ;
 int stub2 (scalar_t__) ;
 int stub3 (int ,scalar_t__) ;
 int stub4 (int ,int ) ;
 int stub5 (int) ;
 int stub6 (int,int,int ,int ,int ,int ) ;
 int stub7 (int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int) ;

__attribute__((used)) static void DrawWithShaders(vout_display_opengl_t *vgl, struct prgm *prgm)
{
    opengl_tex_converter_t *tc = prgm->tc;
    tc->pf_prepare_shader(tc, vgl->tex_width, vgl->tex_height, 1.0f);

    for (unsigned j = 0; j < vgl->prgm->tc->tex_count; j++) {
        assert(vgl->texture[j] != 0);
        vgl->vt.ActiveTexture(GL_TEXTURE0+j);
        vgl->vt.BindTexture(tc->tex_target, vgl->texture[j]);

        vgl->vt.BindBuffer(GL_ARRAY_BUFFER, vgl->texture_buffer_object[j]);

        assert(prgm->aloc.MultiTexCoord[j] != -1);
        vgl->vt.EnableVertexAttribArray(prgm->aloc.MultiTexCoord[j]);
        vgl->vt.VertexAttribPointer(prgm->aloc.MultiTexCoord[j], 2, GL_FLOAT,
                                     0, 0, 0);
    }

    vgl->vt.BindBuffer(GL_ARRAY_BUFFER, vgl->vertex_buffer_object);
    vgl->vt.BindBuffer(GL_ELEMENT_ARRAY_BUFFER, vgl->index_buffer_object);
    vgl->vt.EnableVertexAttribArray(prgm->aloc.VertexPosition);
    vgl->vt.VertexAttribPointer(prgm->aloc.VertexPosition, 3, GL_FLOAT, 0, 0, 0);

    vgl->vt.UniformMatrix4fv(prgm->uloc.OrientationMatrix, 1, GL_FALSE,
                             prgm->var.OrientationMatrix);
    vgl->vt.UniformMatrix4fv(prgm->uloc.ProjectionMatrix, 1, GL_FALSE,
                             prgm->var.ProjectionMatrix);
    vgl->vt.UniformMatrix4fv(prgm->uloc.ViewMatrix, 1, GL_FALSE,
                             prgm->var.ViewMatrix);
    vgl->vt.UniformMatrix4fv(prgm->uloc.ZoomMatrix, 1, GL_FALSE,
                             prgm->var.ZoomMatrix);

    vgl->vt.DrawElements(GL_TRIANGLES, vgl->nb_indices, GL_UNSIGNED_SHORT, 0);
}
