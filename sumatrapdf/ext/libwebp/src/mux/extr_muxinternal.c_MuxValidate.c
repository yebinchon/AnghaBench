
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {scalar_t__ width_; scalar_t__ height_; int * next_; } ;
typedef TYPE_1__ WebPMuxImage ;
typedef scalar_t__ WebPMuxError ;
struct TYPE_9__ {scalar_t__ canvas_width_; scalar_t__ canvas_height_; TYPE_1__* images_; } ;
typedef TYPE_2__ WebPMux ;


 int ALPHA_FLAG ;
 int ANIMATION_FLAG ;
 int EXIF_FLAG ;
 int ICCP_FLAG ;
 int IDX_ANIM ;
 int IDX_ANMF ;
 int IDX_EXIF ;
 int IDX_ICCP ;
 int IDX_VP8 ;
 int IDX_VP8X ;
 int IDX_XMP ;
 scalar_t__ MuxHasAlpha (TYPE_1__*) ;
 int NO_FLAG ;
 scalar_t__ ValidateChunk (TYPE_2__ const* const,int ,int ,int,int,int*) ;
 int WEBP_CHUNK_ALPHA ;
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ;
 scalar_t__ WEBP_MUX_OK ;
 scalar_t__ WebPMuxGetFeatures (TYPE_2__ const* const,int*) ;
 scalar_t__ WebPMuxNumChunks (TYPE_2__ const* const,int ,int*) ;
 int XMP_FLAG ;

WebPMuxError MuxValidate(const WebPMux* const mux) {
  int num_iccp;
  int num_exif;
  int num_xmp;
  int num_anim;
  int num_frames;
  int num_vp8x;
  int num_images;
  int num_alpha;
  uint32_t flags;
  WebPMuxError err;


  if (mux == ((void*)0)) return WEBP_MUX_INVALID_ARGUMENT;


  if (mux->images_ == ((void*)0)) return WEBP_MUX_INVALID_ARGUMENT;

  err = WebPMuxGetFeatures(mux, &flags);
  if (err != WEBP_MUX_OK) return err;


  err = ValidateChunk(mux, IDX_ICCP, ICCP_FLAG, flags, 1, &num_iccp);
  if (err != WEBP_MUX_OK) return err;


  err = ValidateChunk(mux, IDX_EXIF, EXIF_FLAG, flags, 1, &num_exif);
  if (err != WEBP_MUX_OK) return err;


  err = ValidateChunk(mux, IDX_XMP, XMP_FLAG, flags, 1, &num_xmp);
  if (err != WEBP_MUX_OK) return err;



  err = ValidateChunk(mux, IDX_ANIM, NO_FLAG, flags, 1, &num_anim);
  if (err != WEBP_MUX_OK) return err;
  err = ValidateChunk(mux, IDX_ANMF, NO_FLAG, flags, -1, &num_frames);
  if (err != WEBP_MUX_OK) return err;

  {
    const int has_animation = !!(flags & ANIMATION_FLAG);
    if (has_animation && (num_anim == 0 || num_frames == 0)) {
      return WEBP_MUX_INVALID_ARGUMENT;
    }
    if (!has_animation && (num_anim == 1 || num_frames > 0)) {
      return WEBP_MUX_INVALID_ARGUMENT;
    }
    if (!has_animation) {
      const WebPMuxImage* images = mux->images_;

      if (images == ((void*)0) || images->next_ != ((void*)0)) {
        return WEBP_MUX_INVALID_ARGUMENT;
      }

      if (mux->canvas_width_ > 0) {
        if (images->width_ != mux->canvas_width_ ||
            images->height_ != mux->canvas_height_) {
          return WEBP_MUX_INVALID_ARGUMENT;
        }
      }
    }
  }



  err = ValidateChunk(mux, IDX_VP8X, NO_FLAG, flags, 1, &num_vp8x);
  if (err != WEBP_MUX_OK) return err;
  err = ValidateChunk(mux, IDX_VP8, NO_FLAG, flags, -1, &num_images);
  if (err != WEBP_MUX_OK) return err;
  if (num_vp8x == 0 && num_images != 1) return WEBP_MUX_INVALID_ARGUMENT;



  if (MuxHasAlpha(mux->images_)) {
    if (num_vp8x > 0) {

      if (!(flags & ALPHA_FLAG)) return WEBP_MUX_INVALID_ARGUMENT;
    } else {

      err = WebPMuxNumChunks(mux, WEBP_CHUNK_ALPHA, &num_alpha);
      if (err != WEBP_MUX_OK) return err;
      if (num_alpha > 0) return WEBP_MUX_INVALID_ARGUMENT;
    }
  }

  return WEBP_MUX_OK;
}
