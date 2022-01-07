
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; int fbuf; int vbuf; int fbuf_tex; } ;
typedef TYPE_1__ chunk_mesh ;


 scalar_t__ STATE_invalid ;
 scalar_t__ STATE_valid ;
 TYPE_1__** cached_chunk_mesh ;
 int glDeleteBuffersARB (int,int *) ;
 int glDeleteTextures (int,int *) ;

void free_chunk(int slot_x, int slot_y)
{
   chunk_mesh *cm = &cached_chunk_mesh[slot_y][slot_x];
   if (cm->state == STATE_valid) {
      glDeleteTextures(1, &cm->fbuf_tex);
      glDeleteBuffersARB(1, &cm->vbuf);
      glDeleteBuffersARB(1, &cm->fbuf);
      cached_chunk_mesh[slot_y][slot_x].state = STATE_invalid;
   }
}
