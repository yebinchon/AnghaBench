
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ width_; scalar_t__ height_; TYPE_9__* header_; } ;
typedef TYPE_1__ WebPMuxImage ;
typedef scalar_t__ WebPMuxError ;
struct TYPE_11__ {scalar_t__ canvas_width_; scalar_t__ canvas_height_; int images_; } ;
typedef TYPE_2__ WebPMux ;
struct TYPE_13__ {scalar_t__ tag_; } ;
struct TYPE_12__ {scalar_t__ tag; int id; } ;


 int ChunkDelete (TYPE_9__*) ;
 size_t IDX_ANIM ;
 size_t IDX_ANMF ;
 scalar_t__ MuxDeleteAllNamedData (TYPE_2__* const,scalar_t__) ;
 scalar_t__ MuxImageGetNth (TYPE_1__ const**,int,TYPE_1__**) ;
 scalar_t__ WEBP_MUX_OK ;
 scalar_t__ WebPMuxNumChunks (TYPE_2__* const,int ,int*) ;
 int assert (int) ;
 TYPE_3__* kChunks ;

__attribute__((used)) static WebPMuxError MuxCleanup(WebPMux* const mux) {
  int num_frames;
  int num_anim_chunks;




  WebPMuxError err = WebPMuxNumChunks(mux, kChunks[IDX_ANMF].id, &num_frames);
  if (err != WEBP_MUX_OK) return err;
  if (num_frames == 1) {
    WebPMuxImage* frame = ((void*)0);
    err = MuxImageGetNth((const WebPMuxImage**)&mux->images_, 1, &frame);
    assert(err == WEBP_MUX_OK);
    assert(frame != ((void*)0));
    if (frame->header_ != ((void*)0) &&
        ((mux->canvas_width_ == 0 && mux->canvas_height_ == 0) ||
         (frame->width_ == mux->canvas_width_ &&
          frame->height_ == mux->canvas_height_))) {
      assert(frame->header_->tag_ == kChunks[IDX_ANMF].tag);
      ChunkDelete(frame->header_);
      frame->header_ = ((void*)0);
      num_frames = 0;
    }
  }

  err = WebPMuxNumChunks(mux, kChunks[IDX_ANIM].id, &num_anim_chunks);
  if (err != WEBP_MUX_OK) return err;
  if (num_anim_chunks >= 1 && num_frames == 0) {
    err = MuxDeleteAllNamedData(mux, kChunks[IDX_ANIM].tag);
    if (err != WEBP_MUX_OK) return err;
  }
  return WEBP_MUX_OK;
}
