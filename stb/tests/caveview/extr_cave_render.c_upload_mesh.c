
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_3__ {int num_quads; int fbuf; int fbuf_tex; int vbuf; } ;
typedef TYPE_1__ chunk_mesh ;


 int GL_ARRAY_BUFFER_ARB ;
 int GL_RGBA8UI ;
 int GL_STATIC_DRAW_ARB ;
 int GL_TEXTURE_BUFFER_ARB ;
 int glBindBufferARB (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glBufferDataARB (int ,int,int *,int ) ;
 int glGenBuffersARB (int,int *) ;
 int glGenTextures (int,int *) ;
 int glTexBufferARB (int ,int ,int ) ;

void upload_mesh(chunk_mesh *cm, uint8 *build_buffer, uint8 *face_buffer)
{
   glGenBuffersARB(1, &cm->vbuf);
   glBindBufferARB(GL_ARRAY_BUFFER_ARB, cm->vbuf);
   glBufferDataARB(GL_ARRAY_BUFFER_ARB, cm->num_quads*4*sizeof(uint32), build_buffer, GL_STATIC_DRAW_ARB);
   glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);

   glGenBuffersARB(1, &cm->fbuf);
   glBindBufferARB(GL_TEXTURE_BUFFER_ARB, cm->fbuf);
   glBufferDataARB(GL_TEXTURE_BUFFER_ARB, cm->num_quads*sizeof(uint32), face_buffer , GL_STATIC_DRAW_ARB);
   glBindBufferARB(GL_TEXTURE_BUFFER_ARB, 0);

   glGenTextures(1, &cm->fbuf_tex);
   glBindTexture(GL_TEXTURE_BUFFER_ARB, cm->fbuf_tex);
   glTexBufferARB(GL_TEXTURE_BUFFER_ARB, GL_RGBA8UI, cm->fbuf);
   glBindTexture(GL_TEXTURE_BUFFER_ARB, 0);
}
