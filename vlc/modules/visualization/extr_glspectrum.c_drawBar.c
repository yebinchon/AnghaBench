
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;


 int GL_FLOAT ;
 int GL_TRIANGLES ;
 float NB_BANDS ;
 float SPECTRUM_WIDTH ;
 int glDrawArrays (int ,int ,int) ;
 int glNormalPointer (int ,int ,float const*) ;
 int glVertexPointer (int,int ,int ,float const*) ;

__attribute__((used)) static void drawBar(void)
{
    const float w = SPECTRUM_WIDTH / NB_BANDS - 0.05f;

    const GLfloat vertexCoords[] = {
        0.f, 0.f, 0.f, w, 0.f, 0.f, 0.f, 1.f, 0.f,
        0.f, 1.f, 0.f, w, 0.f, 0.f, w, 1.f, 0.f,

        0.f, 0.f, -w, 0.f, 0.f, 0.f, 0.f, 1.f, -w,
        0.f, 1.f, -w, 0.f, 0.f, 0.f, 0.f, 1.f, 0.f,

          w, 0.f, 0.f, w, 0.f, -w, w, 1.f, 0.f,
          w, 1.f, 0.f, w, 0.f, -w, w, 1.f, -w,

          w, 0.f, -w, 0.f, 0.f, -w, 0.f, 1.f, -w,
        0.f, 1.f, -w, w, 1.f, -w, w, 0.f, -w,

        0.f, 1.f, 0.f, w, 1.f, 0.f, w, 1.f, -w,
        0.f, 1.f, 0.f, w, 1.f, -w, 0.f, 1.f, -w,
    };

    const GLfloat normals[] = {
        0.f, 0.f, 1.f, 0.f, 0.f, 1.f, 0.f, 0.f, 1.f,
        0.f, 0.f, 1.f, 0.f, 0.f, 1.f, 0.f, 0.f, 1.f,

        -1.f, 0.f, 0.f, -1.f, 0.f, 0.f, -1.f, 0.f, 0.f,
        -1.f, 0.f, 0.f, -1.f, 0.f, 0.f, -1.f, 0.f, 0.f,

        1.f, 0.f, 0.f, 1.f, 0.f, 0.f, 1.f, 0.f, 0.f,
        1.f, 0.f, 0.f, 1.f, 0.f, 0.f, 1.f, 0.f, 0.f,

        0.f, 0.f, -1.f, 0.f, 0.f, -1.f, 0.f, 0.f, -1.f,
        0.f, 0.f, -1.f, 0.f, 0.f, -1.f, 0.f, 0.f, -1.f,

        0.f, 1.f, 0.f, 0.f, 1.f, 0.f, 0.f, 1.f, 0.f,
        0.f, 1.f, 0.f, 0.f, 1.f, 0.f, 0.f, 1.f, 0.f,
    };

    glVertexPointer(3, GL_FLOAT, 0, vertexCoords);
    glNormalPointer(GL_FLOAT, 0, normals);
    glDrawArrays(GL_TRIANGLES, 0, 6 * 5);
}
