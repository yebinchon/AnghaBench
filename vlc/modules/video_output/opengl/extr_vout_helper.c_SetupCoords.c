
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int (* BufferData ) (int ,unsigned int,int *,int ) ;int (* BindBuffer ) (int ,int ) ;} ;
struct TYPE_7__ {int projection_mode; float i_width; float i_height; scalar_t__ i_cubemap_padding; } ;
struct TYPE_11__ {unsigned int nb_indices; TYPE_4__ vt; int index_buffer_object; int vertex_buffer_object; int * texture_buffer_object; TYPE_3__* prgm; TYPE_1__ fmt; } ;
typedef TYPE_5__ vout_display_opengl_t ;
struct TYPE_9__ {TYPE_2__* tc; } ;
struct TYPE_8__ {unsigned int tex_count; } ;
typedef int GLushort ;
typedef int GLfloat ;


 int BuildCube (unsigned int,float,float,int **,int **,unsigned int*,int **,unsigned int*,float const*,float const*,float const*,float const*) ;
 int BuildRectangle (unsigned int,int **,int **,unsigned int*,int **,unsigned int*,float const*,float const*,float const*,float const*) ;
 int BuildSphere (unsigned int,int **,int **,unsigned int*,int **,unsigned int*,float const*,float const*,float const*,float const*) ;
 int GL_ARRAY_BUFFER ;
 int GL_ELEMENT_ARRAY_BUFFER ;
 int GL_STATIC_DRAW ;



 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (int *) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,unsigned int,int *,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,unsigned int,int *,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,unsigned int,int *,int ) ;

__attribute__((used)) static int SetupCoords(vout_display_opengl_t *vgl,
                       const float *left, const float *top,
                       const float *right, const float *bottom)
{
    GLfloat *vertexCoord, *textureCoord;
    GLushort *indices;
    unsigned nbVertices, nbIndices;

    int i_ret;
    switch (vgl->fmt.projection_mode)
    {
    case 128:
        i_ret = BuildRectangle(vgl->prgm->tc->tex_count,
                               &vertexCoord, &textureCoord, &nbVertices,
                               &indices, &nbIndices,
                               left, top, right, bottom);
        break;
    case 129:
        i_ret = BuildSphere(vgl->prgm->tc->tex_count,
                            &vertexCoord, &textureCoord, &nbVertices,
                            &indices, &nbIndices,
                            left, top, right, bottom);
        break;
    case 130:
        i_ret = BuildCube(vgl->prgm->tc->tex_count,
                          (float)vgl->fmt.i_cubemap_padding / vgl->fmt.i_width,
                          (float)vgl->fmt.i_cubemap_padding / vgl->fmt.i_height,
                          &vertexCoord, &textureCoord, &nbVertices,
                          &indices, &nbIndices,
                          left, top, right, bottom);
        break;
    default:
        i_ret = VLC_EGENERIC;
        break;
    }

    if (i_ret != VLC_SUCCESS)
        return i_ret;

    for (unsigned j = 0; j < vgl->prgm->tc->tex_count; j++)
    {
        vgl->vt.BindBuffer(GL_ARRAY_BUFFER, vgl->texture_buffer_object[j]);
        vgl->vt.BufferData(GL_ARRAY_BUFFER, nbVertices * 2 * sizeof(GLfloat),
                           textureCoord + j * nbVertices * 2, GL_STATIC_DRAW);
    }

    vgl->vt.BindBuffer(GL_ARRAY_BUFFER, vgl->vertex_buffer_object);
    vgl->vt.BufferData(GL_ARRAY_BUFFER, nbVertices * 3 * sizeof(GLfloat),
                       vertexCoord, GL_STATIC_DRAW);

    vgl->vt.BindBuffer(GL_ELEMENT_ARRAY_BUFFER, vgl->index_buffer_object);
    vgl->vt.BufferData(GL_ELEMENT_ARRAY_BUFFER, nbIndices * sizeof(GLushort),
                       indices, GL_STATIC_DRAW);

    free(textureCoord);
    free(vertexCoord);
    free(indices);

    vgl->nb_indices = nbIndices;

    return VLC_SUCCESS;
}
