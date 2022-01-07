
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_19__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_27__ {int (* Disable ) (int ) ;int (* DrawArrays ) (int ,int ,int) ;int (* UniformMatrix4fv ) (int ,int,int ,int ) ;int (* VertexAttribPointer ) (int ,int,int ,int ,int ,int ) ;int (* EnableVertexAttribArray ) (int ) ;int (* BufferData ) (int ,int,double const*,int ) ;int (* BindBuffer ) (int ,int ) ;int (* BindTexture ) (int ,scalar_t__) ;int (* ActiveTexture ) (scalar_t__) ;int (* GenBuffers ) (int,int *) ;int (* DeleteBuffers ) (int,int *) ;int (* BlendFunc ) (int ,int ) ;int (* Enable ) (int ) ;int (* UseProgram ) (int ) ;int (* Clear ) (int ) ;} ;
struct TYPE_28__ {float i_x_offset; float i_y_offset; float i_visible_width; float i_visible_height; } ;
struct TYPE_32__ {float* tex_width; float* tex_height; int region_count; int subpicture_buffer_object_count; int gl; TYPE_4__ vt; int * subpicture_buffer_object; TYPE_12__* region; struct prgm* sub_prgm; TYPE_19__* prgm; TYPE_5__ last_source; } ;
typedef TYPE_9__ vout_display_opengl_t ;
struct TYPE_20__ {float i_x_offset; float i_y_offset; float i_visible_width; float i_visible_height; } ;
typedef TYPE_10__ video_format_t ;
typedef int vertexCoord ;
typedef int textureCoord ;
struct TYPE_26__ {int ZoomMatrix; int ViewMatrix; int ProjectionMatrix; int OrientationMatrix; } ;
struct TYPE_25__ {int ZoomMatrix; int ViewMatrix; int ProjectionMatrix; int OrientationMatrix; } ;
struct TYPE_24__ {int VertexPosition; int * MultiTexCoord; } ;
struct prgm {TYPE_3__ var; TYPE_2__ uloc; TYPE_1__ aloc; TYPE_11__* tc; int id; } ;
struct TYPE_21__ {unsigned int tex_count; int (* pf_prepare_shader ) (TYPE_11__*,int *,int *,int ) ;int tex_target; TYPE_8__* texs; } ;
typedef TYPE_11__ opengl_tex_converter_t ;
struct TYPE_22__ {double const left; double const top; double const bottom; double const right; double tex_height; double tex_width; scalar_t__ texture; int alpha; int height; int width; } ;
typedef TYPE_12__ gl_region_t ;
struct TYPE_30__ {float den; scalar_t__ num; } ;
struct TYPE_29__ {float den; scalar_t__ num; } ;
struct TYPE_31__ {TYPE_7__ h; TYPE_6__ w; } ;
struct TYPE_23__ {TYPE_11__* tc; int id; } ;
typedef int GLuint ;
typedef double GLfloat ;


 int DrawWithShaders (TYPE_9__*,TYPE_19__*) ;
 int GL_ARRAY_BUFFER ;
 int GL_ASSERT_NOERROR () ;
 int GL_BLEND ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int GL_STATIC_DRAW ;
 scalar_t__ GL_TEXTURE0 ;
 int GL_TRIANGLE_STRIP ;
 int PICTURE_PLANE_MAX ;
 int SetupCoords (TYPE_9__*,float*,float*,float*,float*) ;
 int TextureCropForStereo (TYPE_9__*,float*,float*,float*,float*) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int * realloc_or_free (int *,int) ;
 int stub1 (int ) ;
 int stub10 (TYPE_11__*,int *,int *,int ) ;
 int stub11 (int ,int ) ;
 int stub12 (int ,int,double const*,int ) ;
 int stub13 (int ) ;
 int stub14 (int ,int,int ,int ,int ,int ) ;
 int stub15 (int ,int ) ;
 int stub16 (int ,int,double const*,int ) ;
 int stub17 (int ) ;
 int stub18 (int ,int,int ,int ,int ,int ) ;
 int stub19 (int ,int,int ,int ) ;
 int stub2 (int ) ;
 int stub20 (int ,int,int ,int ) ;
 int stub21 (int ,int,int ,int ) ;
 int stub22 (int ,int,int ,int ) ;
 int stub23 (int ,int ,int) ;
 int stub24 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int,int *) ;
 int stub7 (int,int *) ;
 int stub8 (scalar_t__) ;
 int stub9 (int ,scalar_t__) ;
 int vlc_gl_Swap (int ) ;

int vout_display_opengl_Display(vout_display_opengl_t *vgl,
                                const video_format_t *source)
{
    GL_ASSERT_NOERROR();




    vgl->vt.Clear(GL_COLOR_BUFFER_BIT);

    vgl->vt.UseProgram(vgl->prgm->id);

    if (source->i_x_offset != vgl->last_source.i_x_offset
     || source->i_y_offset != vgl->last_source.i_y_offset
     || source->i_visible_width != vgl->last_source.i_visible_width
     || source->i_visible_height != vgl->last_source.i_visible_height)
    {
        float left[PICTURE_PLANE_MAX];
        float top[PICTURE_PLANE_MAX];
        float right[PICTURE_PLANE_MAX];
        float bottom[PICTURE_PLANE_MAX];
        const opengl_tex_converter_t *tc = vgl->prgm->tc;
        for (unsigned j = 0; j < tc->tex_count; j++)
        {
            float scale_w = (float)tc->texs[j].w.num / tc->texs[j].w.den
                          / vgl->tex_width[j];
            float scale_h = (float)tc->texs[j].h.num / tc->texs[j].h.den
                          / vgl->tex_height[j];
            left[j] = (source->i_x_offset + 0 ) * scale_w;
            top[j] = (source->i_y_offset + 0 ) * scale_h;
            right[j] = (source->i_x_offset + source->i_visible_width ) * scale_w;
            bottom[j] = (source->i_y_offset + source->i_visible_height) * scale_h;
        }

        TextureCropForStereo(vgl, left, top, right, bottom);
        int ret = SetupCoords(vgl, left, top, right, bottom);
        if (ret != VLC_SUCCESS)
            return ret;

        vgl->last_source.i_x_offset = source->i_x_offset;
        vgl->last_source.i_y_offset = source->i_y_offset;
        vgl->last_source.i_visible_width = source->i_visible_width;
        vgl->last_source.i_visible_height = source->i_visible_height;
    }
    DrawWithShaders(vgl, vgl->prgm);



    struct prgm *prgm = vgl->sub_prgm;
    GLuint program = prgm->id;
    opengl_tex_converter_t *tc = prgm->tc;
    vgl->vt.UseProgram(program);

    vgl->vt.Enable(GL_BLEND);
    vgl->vt.BlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);


    if (2 * vgl->region_count > vgl->subpicture_buffer_object_count) {
        if (vgl->subpicture_buffer_object_count > 0)
            vgl->vt.DeleteBuffers(vgl->subpicture_buffer_object_count,
                                  vgl->subpicture_buffer_object);
        vgl->subpicture_buffer_object_count = 0;

        int new_count = 2 * vgl->region_count;
        vgl->subpicture_buffer_object = realloc_or_free(vgl->subpicture_buffer_object, new_count * sizeof(GLuint));
        if (!vgl->subpicture_buffer_object)
            return VLC_ENOMEM;

        vgl->subpicture_buffer_object_count = new_count;
        vgl->vt.GenBuffers(vgl->subpicture_buffer_object_count,
                           vgl->subpicture_buffer_object);
    }

    vgl->vt.ActiveTexture(GL_TEXTURE0 + 0);
    for (int i = 0; i < vgl->region_count; i++) {
        gl_region_t *glr = &vgl->region[i];
        const GLfloat vertexCoord[] = {
            glr->left, glr->top,
            glr->left, glr->bottom,
            glr->right, glr->top,
            glr->right, glr->bottom,
        };
        const GLfloat textureCoord[] = {
            0.0, 0.0,
            0.0, glr->tex_height,
            glr->tex_width, 0.0,
            glr->tex_width, glr->tex_height,
        };

        assert(glr->texture != 0);
        vgl->vt.BindTexture(tc->tex_target, glr->texture);

        tc->pf_prepare_shader(tc, &glr->width, &glr->height, glr->alpha);

        vgl->vt.BindBuffer(GL_ARRAY_BUFFER, vgl->subpicture_buffer_object[2 * i]);
        vgl->vt.BufferData(GL_ARRAY_BUFFER, sizeof(textureCoord), textureCoord, GL_STATIC_DRAW);
        vgl->vt.EnableVertexAttribArray(prgm->aloc.MultiTexCoord[0]);
        vgl->vt.VertexAttribPointer(prgm->aloc.MultiTexCoord[0], 2, GL_FLOAT,
                                    0, 0, 0);

        vgl->vt.BindBuffer(GL_ARRAY_BUFFER, vgl->subpicture_buffer_object[2 * i + 1]);
        vgl->vt.BufferData(GL_ARRAY_BUFFER, sizeof(vertexCoord), vertexCoord, GL_STATIC_DRAW);
        vgl->vt.EnableVertexAttribArray(prgm->aloc.VertexPosition);
        vgl->vt.VertexAttribPointer(prgm->aloc.VertexPosition, 2, GL_FLOAT,
                                    0, 0, 0);

        vgl->vt.UniformMatrix4fv(prgm->uloc.OrientationMatrix, 1, GL_FALSE,
                                 prgm->var.OrientationMatrix);
        vgl->vt.UniformMatrix4fv(prgm->uloc.ProjectionMatrix, 1, GL_FALSE,
                                 prgm->var.ProjectionMatrix);
        vgl->vt.UniformMatrix4fv(prgm->uloc.ViewMatrix, 1, GL_FALSE,
                                 prgm->var.ViewMatrix);
        vgl->vt.UniformMatrix4fv(prgm->uloc.ZoomMatrix, 1, GL_FALSE,
                                 prgm->var.ZoomMatrix);

        vgl->vt.DrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    }
    vgl->vt.Disable(GL_BLEND);


    vlc_gl_Swap(vgl->gl);

    GL_ASSERT_NOERROR();

    return VLC_SUCCESS;
}
