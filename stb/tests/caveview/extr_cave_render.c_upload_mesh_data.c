
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int cx; int cy; int num_quads; int transform; int bounds; int face_buffer; int build_buffer; } ;
typedef TYPE_1__ raw_mesh ;
struct TYPE_7__ {int num_quads; int vbuf_size; int fbuf_size; int priority; int chunk_x; int chunk_y; int state; int transform; int bounds; } ;
typedef TYPE_2__ chunk_mesh ;


 int CACHED_MESH_NUM_X ;
 int CACHED_MESH_NUM_Y ;
 int STATE_valid ;
 TYPE_2__** cached_chunk_mesh ;
 int free_chunk (int,int) ;
 int memcpy (int ,int ,int) ;
 int upload_mesh (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void upload_mesh_data(raw_mesh *rm)
{
   int cx = rm->cx;
   int cy = rm->cy;
   int slot_x = (cx >> 1) & (CACHED_MESH_NUM_X-1);
   int slot_y = (cy >> 1) & (CACHED_MESH_NUM_Y-1);
   chunk_mesh *cm;

   free_chunk(slot_x, slot_y);

   cm = &cached_chunk_mesh[slot_y][slot_x];
   cm->num_quads = rm->num_quads;

   upload_mesh(cm, rm->build_buffer, rm->face_buffer);
   cm->vbuf_size = rm->num_quads*4*sizeof(uint32);
   cm->fbuf_size = rm->num_quads*sizeof(uint32);
   cm->priority = 100000;
   cm->chunk_x = cx;
   cm->chunk_y = cy;

   memcpy(cm->bounds, rm->bounds, sizeof(cm->bounds));
   memcpy(cm->transform, rm->transform, sizeof(cm->transform));


   cm->state = STATE_valid;
}
