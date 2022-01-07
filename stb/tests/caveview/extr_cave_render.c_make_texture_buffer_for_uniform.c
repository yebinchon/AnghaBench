
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int array_length; int bytes_per_element; int type; scalar_t__ default_value; int name; } ;
typedef TYPE_1__ stbvox_uniform_info ;
typedef int GLint ;
typedef int GLenum ;


 int GL_ARRAY_BUFFER_ARB ;
 int GL_RG32F ;
 int GL_RGB32F ;
 int GL_RGBA32F ;
 int GL_STATIC_DRAW_ARB ;
 scalar_t__ GL_TEXTURE0 ;
 int GL_TEXTURE_BUFFER_ARB ;



 int STBVOX_UNIFORM_color_table ;
 int assert (int ) ;
 int glActiveTextureARB (scalar_t__) ;
 int glBindBufferARB (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glBufferDataARB (int ,int,scalar_t__,int ) ;
 int glGenBuffersARB (int,int *) ;
 int glGenTextures (int,int *) ;
 int glTexBufferARB (int ,int ,int ) ;
 int main_prog ;
 int stbglUniform1i (int ,int) ;
 int stbglUseProgram (int ) ;
 int stbgl_find_uniform (int ,int ) ;
 int stbvox_get_uniform_info (TYPE_1__*,int) ;
 int * unibuf ;
 int * unitex ;

void make_texture_buffer_for_uniform(int uniform, int slot)
{
   GLenum type;
   stbvox_uniform_info raw, *ui=&raw;
   GLint uloc;

   stbvox_get_uniform_info(ui, uniform);
   uloc = stbgl_find_uniform(main_prog, ui->name);

   if (uniform == STBVOX_UNIFORM_color_table)
      ((float *)ui->default_value)[63*4+3] = 2.0f;

   glGenBuffersARB(1, &unibuf[uniform]);
   glBindBufferARB(GL_ARRAY_BUFFER_ARB, unibuf[uniform]);
   glBufferDataARB(GL_ARRAY_BUFFER_ARB, ui->array_length * ui->bytes_per_element, ui->default_value, GL_STATIC_DRAW_ARB);
   glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);

   glGenTextures(1, &unitex[uniform]);
   glBindTexture(GL_TEXTURE_BUFFER_ARB, unitex[uniform]);
   switch (ui->type) {
      case 130: type = GL_RG32F; break;
      case 129: type = GL_RGB32F; break;
      case 128: type = GL_RGBA32F; break;
      default: assert(0);
   }
   glTexBufferARB(GL_TEXTURE_BUFFER_ARB, type, unibuf[uniform]);
   glBindTexture(GL_TEXTURE_BUFFER_ARB, 0);

   glActiveTextureARB(GL_TEXTURE0 + slot);
   glBindTexture(GL_TEXTURE_BUFFER_ARB, unitex[uniform]);
   glActiveTextureARB(GL_TEXTURE0);

   stbglUseProgram(main_prog);
   stbglUniform1i(uloc, slot);
}
