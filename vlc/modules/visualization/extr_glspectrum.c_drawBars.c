
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_NORMAL_ARRAY ;
 int GL_VERTEX_ARRAY ;
 unsigned int NB_BANDS ;
 unsigned int SPECTRUM_WIDTH ;
 int drawBar () ;
 int glDisableClientState (int ) ;
 int glEnableClientState (int ) ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glScalef (float,float,float) ;
 int glTranslatef (float,float,float) ;
 int setBarColor (float) ;

__attribute__((used)) static void drawBars(float heights[])
{
    glPushMatrix();
    glTranslatef(-2.f, 0.f, 0.f);

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);

    float w = SPECTRUM_WIDTH / NB_BANDS;
    for (unsigned i = 0; i < NB_BANDS; ++i)
    {
        glPushMatrix();
        glScalef(1.f, heights[i], 1.f);
        setBarColor(heights[i]);
        drawBar();
        glPopMatrix();

        glTranslatef(w, 0.f, 0.f);
    }

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);

    glPopMatrix();
}
