
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int video_orientation_t ;
struct TYPE_8__ {int x; int y; float tu; float tv; float z; float rhw; } ;
struct TYPE_7__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ CUSTOMVERTEX ;


 int orientationVertexOrder (int ,int*) ;

__attribute__((used)) static void Direct3D9SetupVertices(CUSTOMVERTEX *vertices,
                                  const RECT *full_texture, const RECT *visible_texture,
                                  const RECT *rect_in_display,
                                  int alpha,
                                  video_orientation_t orientation)
{

    const int vertices_coords[4][2] = {
        { rect_in_display->left, rect_in_display->top },
        { rect_in_display->right, rect_in_display->top },
        { rect_in_display->right, rect_in_display->bottom },
        { rect_in_display->left, rect_in_display->bottom },
    };


    int vertex_order[4];
    orientationVertexOrder(orientation, vertex_order);

    for (int i = 0; i < 4; ++i) {
        vertices[i].x = vertices_coords[vertex_order[i]][0];
        vertices[i].y = vertices_coords[vertex_order[i]][1];
    }

    float texture_right = (float)visible_texture->right / (float)full_texture->right;
    float texture_left = (float)visible_texture->left / (float)full_texture->right;
    float texture_top = (float)visible_texture->top / (float)full_texture->bottom;
    float texture_bottom = (float)visible_texture->bottom / (float)full_texture->bottom;

    vertices[0].tu = texture_left;
    vertices[0].tv = texture_top;

    vertices[1].tu = texture_right;
    vertices[1].tv = texture_top;

    vertices[2].tu = texture_right;
    vertices[2].tv = texture_bottom;

    vertices[3].tu = texture_left;
    vertices[3].tv = texture_bottom;

    for (int i = 0; i < 4; i++) {


        vertices[i].x -= 0.5;
        vertices[i].y -= 0.5;

        vertices[i].z = 0.0f;
        vertices[i].rhw = 1.0f;
    }
}
