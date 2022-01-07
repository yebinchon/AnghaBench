
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int width; int height; int use_argb; int argb_stride; int argb; int * stats; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_14__ {int lossless; int exact; int method; int quality; } ;
typedef TYPE_2__ WebPConfig ;
typedef int WebPAuxStats ;
struct TYPE_15__ {int error_; } ;
typedef TYPE_3__ VP8LBitWriter ;


 int VP8LBitWriterWipeOut (TYPE_3__* const) ;
 scalar_t__ VP8LEncodeStream (TYPE_2__*,TYPE_1__*,TYPE_3__* const,int ) ;
 scalar_t__ VP8_ENC_OK ;
 int WebPConfigInit (TYPE_2__*) ;
 int WebPDispatchAlphaToGreen (int const* const,int,int,int,int ,int ) ;
 int WebPPictureAlloc (TYPE_1__*) ;
 int WebPPictureFree (TYPE_1__*) ;
 int WebPPictureInit (TYPE_1__*) ;
 int assert (int) ;

__attribute__((used)) static int EncodeLossless(const uint8_t* const data, int width, int height,
                          int effort_level,
                          int use_quality_100, VP8LBitWriter* const bw,
                          WebPAuxStats* const stats) {
  int ok = 0;
  WebPConfig config;
  WebPPicture picture;

  WebPPictureInit(&picture);
  picture.width = width;
  picture.height = height;
  picture.use_argb = 1;
  picture.stats = stats;
  if (!WebPPictureAlloc(&picture)) return 0;


  WebPDispatchAlphaToGreen(data, width, picture.width, picture.height,
                           picture.argb, picture.argb_stride);

  WebPConfigInit(&config);
  config.lossless = 1;




  config.exact = 1;
  config.method = effort_level;





  config.quality =
      (use_quality_100 && effort_level == 6) ? 100 : 8.f * effort_level;
  assert(config.quality >= 0 && config.quality <= 100.f);





  ok = (VP8LEncodeStream(&config, &picture, bw, 0 ) == VP8_ENC_OK);
  WebPPictureFree(&picture);
  ok = ok && !bw->error_;
  if (!ok) {
    VP8LBitWriterWipeOut(bw);
    return 0;
  }
  return 1;
}
