
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unknown_; int xmp_; int exif_; int anim_; int iccp_; int vp8x_; int images_; } ;
typedef TYPE_1__ WebPMux ;


 int ChunkListDelete (int *) ;
 int DeleteAllImages (int *) ;
 int assert (int ) ;

__attribute__((used)) static void MuxRelease(WebPMux* const mux) {
  assert(mux != ((void*)0));
  DeleteAllImages(&mux->images_);
  ChunkListDelete(&mux->vp8x_);
  ChunkListDelete(&mux->iccp_);
  ChunkListDelete(&mux->anim_);
  ChunkListDelete(&mux->exif_);
  ChunkListDelete(&mux->xmp_);
  ChunkListDelete(&mux->unknown_);
}
