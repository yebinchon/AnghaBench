
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_13__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_21__ {TYPE_9__* header_; TYPE_2__* img_; } ;
typedef TYPE_10__ WebPMuxImage ;
typedef scalar_t__ WebPMuxError ;
struct TYPE_22__ {int canvas_width_; int canvas_height_; int * unknown_; TYPE_8__* xmp_; TYPE_6__* exif_; TYPE_4__* iccp_; TYPE_10__* images_; } ;
typedef TYPE_11__ WebPMux ;
struct TYPE_23__ {int member_1; int * member_0; } ;
typedef TYPE_12__ WebPData ;
struct TYPE_33__ {scalar_t__ tag_; } ;
struct TYPE_31__ {int * bytes; } ;
struct TYPE_32__ {TYPE_7__ data_; } ;
struct TYPE_29__ {int * bytes; } ;
struct TYPE_30__ {TYPE_5__ data_; } ;
struct TYPE_27__ {int * bytes; } ;
struct TYPE_28__ {TYPE_3__ data_; } ;
struct TYPE_25__ {int * bytes; } ;
struct TYPE_26__ {TYPE_1__ data_; } ;
struct TYPE_24__ {scalar_t__ tag; } ;


 int ALPHA_FLAG ;
 int ANIMATION_FLAG ;
 int EXIF_FLAG ;
 scalar_t__ GetAdjustedCanvasSize (TYPE_11__* const,int*,int*) ;
 int ICCP_FLAG ;
 size_t IDX_ANMF ;
 size_t IDX_VP8X ;
 int MAX_CANVAS_SIZE ;
 scalar_t__ MuxDeleteAllNamedData (TYPE_11__* const,scalar_t__) ;
 scalar_t__ MuxHasAlpha (TYPE_10__ const*) ;
 scalar_t__ MuxImageCount (TYPE_10__ const*,int ) ;
 scalar_t__ MuxSet (TYPE_11__* const,scalar_t__,TYPE_12__ const*,int) ;
 int PutLE24 (int *,int) ;
 int PutLE32 (int *,int ) ;
 int VP8X_CHUNK_SIZE ;
 int WEBP_CHUNK_ALPHA ;
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ;
 scalar_t__ WEBP_MUX_NOT_FOUND ;
 scalar_t__ WEBP_MUX_OK ;
 int XMP_FLAG ;
 int assert (int ) ;
 TYPE_13__* kChunks ;

__attribute__((used)) static WebPMuxError CreateVP8XChunk(WebPMux* const mux) {
  WebPMuxError err = WEBP_MUX_OK;
  uint32_t flags = 0;
  int width = 0;
  int height = 0;
  uint8_t data[VP8X_CHUNK_SIZE];
  const WebPData vp8x = { data, VP8X_CHUNK_SIZE };
  const WebPMuxImage* images = ((void*)0);

  assert(mux != ((void*)0));
  images = mux->images_;
  if (images == ((void*)0) || images->img_ == ((void*)0) ||
      images->img_->data_.bytes == ((void*)0)) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }



  err = MuxDeleteAllNamedData(mux, kChunks[IDX_VP8X].tag);
  if (err != WEBP_MUX_OK && err != WEBP_MUX_NOT_FOUND) return err;


  if (mux->iccp_ != ((void*)0) && mux->iccp_->data_.bytes != ((void*)0)) {
    flags |= ICCP_FLAG;
  }
  if (mux->exif_ != ((void*)0) && mux->exif_->data_.bytes != ((void*)0)) {
    flags |= EXIF_FLAG;
  }
  if (mux->xmp_ != ((void*)0) && mux->xmp_->data_.bytes != ((void*)0)) {
    flags |= XMP_FLAG;
  }
  if (images->header_ != ((void*)0)) {
    if (images->header_->tag_ == kChunks[IDX_ANMF].tag) {

      flags |= ANIMATION_FLAG;
    }
  }
  if (MuxImageCount(images, WEBP_CHUNK_ALPHA) > 0) {
    flags |= ALPHA_FLAG;
  }

  err = GetAdjustedCanvasSize(mux, &width, &height);
  if (err != WEBP_MUX_OK) return err;

  if (width <= 0 || height <= 0) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }
  if (width > MAX_CANVAS_SIZE || height > MAX_CANVAS_SIZE) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }

  if (mux->canvas_width_ != 0 || mux->canvas_height_ != 0) {
    if (width > mux->canvas_width_ || height > mux->canvas_height_) {
      return WEBP_MUX_INVALID_ARGUMENT;
    }
    width = mux->canvas_width_;
    height = mux->canvas_height_;
  }

  if (flags == 0 && mux->unknown_ == ((void*)0)) {

    return WEBP_MUX_OK;
  }

  if (MuxHasAlpha(images)) {



    flags |= ALPHA_FLAG;
  }

  PutLE32(data + 0, flags);
  PutLE24(data + 4, width - 1);
  PutLE24(data + 7, height - 1);

  return MuxSet(mux, kChunks[IDX_VP8X].tag, &vp8x, 1);
}
