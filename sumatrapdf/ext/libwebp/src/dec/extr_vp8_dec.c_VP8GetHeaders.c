
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ VP8StatusCode ;
struct TYPE_13__ {int width_; int xscale_; int height_; int yscale_; void* clamp_type_; void* colorspace_; } ;
typedef TYPE_1__ VP8PictureHeader ;
struct TYPE_14__ {int* data; size_t data_size; int width; int height; int crop_right; int crop_bottom; int scaled_width; int scaled_height; int mb_w; int mb_h; scalar_t__ use_scaling; scalar_t__ crop_left; scalar_t__ crop_top; scalar_t__ use_cropping; } ;
typedef TYPE_2__ VP8Io ;
struct TYPE_15__ {int key_frame_; int profile_; int show_; int partition_length_; } ;
typedef TYPE_3__ VP8FrameHeader ;
struct TYPE_16__ {int mb_w_; int mb_h_; int ready_; int proba_; int segment_hdr_; int br_; TYPE_1__ pic_hdr_; TYPE_3__ frm_hdr_; } ;
typedef TYPE_4__ VP8Decoder ;
typedef int VP8BitReader ;


 int ParseFilterHeader (int *,TYPE_4__* const) ;
 scalar_t__ ParsePartitions (TYPE_4__* const,int const*,size_t) ;
 int ParseSegmentHeader (int *,int *,int *) ;
 int ResetSegmentHeader (int *) ;
 int SetOk (TYPE_4__* const) ;
 int VP8CheckSignature (int const*,size_t) ;
 void* VP8Get (int *,char*) ;
 int VP8InitBitReader (int *,int const*,size_t) ;
 int VP8ParseProba (int *,TYPE_4__* const) ;
 int VP8ParseQuant (TYPE_4__* const) ;
 int VP8ResetProba (int *) ;
 int VP8SetError (TYPE_4__* const,scalar_t__,char*) ;
 scalar_t__ VP8_STATUS_BITSTREAM_ERROR ;
 scalar_t__ VP8_STATUS_INVALID_PARAM ;
 scalar_t__ VP8_STATUS_NOT_ENOUGH_DATA ;
 scalar_t__ VP8_STATUS_OK ;
 scalar_t__ VP8_STATUS_UNSUPPORTED_FEATURE ;

int VP8GetHeaders(VP8Decoder* const dec, VP8Io* const io) {
  const uint8_t* buf;
  size_t buf_size;
  VP8FrameHeader* frm_hdr;
  VP8PictureHeader* pic_hdr;
  VP8BitReader* br;
  VP8StatusCode status;

  if (dec == ((void*)0)) {
    return 0;
  }
  SetOk(dec);
  if (io == ((void*)0)) {
    return VP8SetError(dec, VP8_STATUS_INVALID_PARAM,
                       "null VP8Io passed to VP8GetHeaders()");
  }
  buf = io->data;
  buf_size = io->data_size;
  if (buf_size < 4) {
    return VP8SetError(dec, VP8_STATUS_NOT_ENOUGH_DATA,
                       "Truncated header.");
  }


  {
    const uint32_t bits = buf[0] | (buf[1] << 8) | (buf[2] << 16);
    frm_hdr = &dec->frm_hdr_;
    frm_hdr->key_frame_ = !(bits & 1);
    frm_hdr->profile_ = (bits >> 1) & 7;
    frm_hdr->show_ = (bits >> 4) & 1;
    frm_hdr->partition_length_ = (bits >> 5);
    if (frm_hdr->profile_ > 3) {
      return VP8SetError(dec, VP8_STATUS_BITSTREAM_ERROR,
                         "Incorrect keyframe parameters.");
    }
    if (!frm_hdr->show_) {
      return VP8SetError(dec, VP8_STATUS_UNSUPPORTED_FEATURE,
                         "Frame not displayable.");
    }
    buf += 3;
    buf_size -= 3;
  }

  pic_hdr = &dec->pic_hdr_;
  if (frm_hdr->key_frame_) {

    if (buf_size < 7) {
      return VP8SetError(dec, VP8_STATUS_NOT_ENOUGH_DATA,
                         "cannot parse picture header");
    }
    if (!VP8CheckSignature(buf, buf_size)) {
      return VP8SetError(dec, VP8_STATUS_BITSTREAM_ERROR,
                         "Bad code word");
    }
    pic_hdr->width_ = ((buf[4] << 8) | buf[3]) & 0x3fff;
    pic_hdr->xscale_ = buf[4] >> 6;
    pic_hdr->height_ = ((buf[6] << 8) | buf[5]) & 0x3fff;
    pic_hdr->yscale_ = buf[6] >> 6;
    buf += 7;
    buf_size -= 7;

    dec->mb_w_ = (pic_hdr->width_ + 15) >> 4;
    dec->mb_h_ = (pic_hdr->height_ + 15) >> 4;


    io->width = pic_hdr->width_;
    io->height = pic_hdr->height_;



    io->use_cropping = 0;
    io->crop_top = 0;
    io->crop_left = 0;
    io->crop_right = io->width;
    io->crop_bottom = io->height;
    io->use_scaling = 0;
    io->scaled_width = io->width;
    io->scaled_height = io->height;

    io->mb_w = io->width;
    io->mb_h = io->height;

    VP8ResetProba(&dec->proba_);
    ResetSegmentHeader(&dec->segment_hdr_);
  }



  if (frm_hdr->partition_length_ > buf_size) {
    return VP8SetError(dec, VP8_STATUS_NOT_ENOUGH_DATA,
                       "bad partition length");
  }

  br = &dec->br_;
  VP8InitBitReader(br, buf, frm_hdr->partition_length_);
  buf += frm_hdr->partition_length_;
  buf_size -= frm_hdr->partition_length_;

  if (frm_hdr->key_frame_) {
    pic_hdr->colorspace_ = VP8Get(br, "global-header");
    pic_hdr->clamp_type_ = VP8Get(br, "global-header");
  }
  if (!ParseSegmentHeader(br, &dec->segment_hdr_, &dec->proba_)) {
    return VP8SetError(dec, VP8_STATUS_BITSTREAM_ERROR,
                       "cannot parse segment header");
  }

  if (!ParseFilterHeader(br, dec)) {
    return VP8SetError(dec, VP8_STATUS_BITSTREAM_ERROR,
                       "cannot parse filter header");
  }
  status = ParsePartitions(dec, buf, buf_size);
  if (status != VP8_STATUS_OK) {
    return VP8SetError(dec, status, "cannot parse partitions");
  }


  VP8ParseQuant(dec);


  if (!frm_hdr->key_frame_) {
    return VP8SetError(dec, VP8_STATUS_UNSUPPORTED_FEATURE,
                       "Not a key frame.");
  }

  VP8Get(br, "global-header");

  VP8ParseProba(br, dec);


  dec->ready_ = 1;
  return 1;
}
