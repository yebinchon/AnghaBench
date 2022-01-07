
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int GL_FLOAT ;
 int GL_QUADS ;
 int GL_VERTEX_ARRAY ;
 int glColor3f (float,float,float) ;
 int glDisableClientState (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableClientState (int ) ;
 int glVertexPointer (int,int ,int,char*) ;
 int stb_easy_font_print (float,float,char*,int *,char*,int) ;

__attribute__((used)) static void print_string(float x, float y, char *text, float r, float g, float b)
{
   static char buffer[99999];
   int num_quads;

   num_quads = stb_easy_font_print(x, y, text, ((void*)0), buffer, sizeof(buffer));

   glColor3f(r,g,b);
   glEnableClientState(GL_VERTEX_ARRAY);
   glVertexPointer(2, GL_FLOAT, 16, buffer);
   glDrawArrays(GL_QUADS, 0, num_quads*4);
   glDisableClientState(GL_VERTEX_ARRAY);
}
