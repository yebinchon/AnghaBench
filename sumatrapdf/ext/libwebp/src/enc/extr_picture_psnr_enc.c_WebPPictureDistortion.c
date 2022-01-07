
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int width; int height; scalar_t__ use_argb; scalar_t__ argb; scalar_t__ argb_stride; } ;
typedef TYPE_1__ WebPPicture ;


 int BLUE_OFFSET ;
 scalar_t__ GetLogSSIM (double,double) ;
 scalar_t__ GetPSNR (double,double) ;
 int VP8SSIMDspInit () ;
 int WebPPictureFree (TYPE_1__*) ;
 int WebPPictureInit (TYPE_1__*) ;
 int WebPPictureView (TYPE_1__ const*,int ,int ,int,int,TYPE_1__*) ;
 int WebPPictureYUVAToARGB (TYPE_1__*) ;
 int WebPPlaneDistortion (int const*,size_t const,int const*,size_t const,int,int,int,int,float*,float*) ;

int WebPPictureDistortion(const WebPPicture* src, const WebPPicture* ref,
                          int type, float results[5]) {
  int w, h, c;
  int ok = 0;
  WebPPicture p0, p1;
  double total_size = 0., total_distortion = 0.;
  if (src == ((void*)0) || ref == ((void*)0) ||
      src->width != ref->width || src->height != ref->height ||
      results == ((void*)0)) {
    return 0;
  }

  VP8SSIMDspInit();
  if (!WebPPictureInit(&p0) || !WebPPictureInit(&p1)) return 0;
  w = src->width;
  h = src->height;
  if (!WebPPictureView(src, 0, 0, w, h, &p0)) goto Error;
  if (!WebPPictureView(ref, 0, 0, w, h, &p1)) goto Error;


  if (p0.use_argb == 0 && !WebPPictureYUVAToARGB(&p0)) goto Error;
  if (p1.use_argb == 0 && !WebPPictureYUVAToARGB(&p1)) goto Error;
  for (c = 0; c < 4; ++c) {
    float distortion;
    const size_t stride0 = 4 * (size_t)p0.argb_stride;
    const size_t stride1 = 4 * (size_t)p1.argb_stride;

    const int offset = c ^ BLUE_OFFSET;
    if (!WebPPlaneDistortion((const uint8_t*)p0.argb + offset, stride0,
                             (const uint8_t*)p1.argb + offset, stride1,
                             w, h, 4, type, &distortion, results + c)) {
      goto Error;
    }
    total_distortion += distortion;
    total_size += w * h;
  }

  results[4] = (type == 1) ? (float)GetLogSSIM(total_distortion, total_size)
                           : (float)GetPSNR(total_distortion, total_size);
  ok = 1;

 Error:
  WebPPictureFree(&p0);
  WebPPictureFree(&p1);
  return ok;
}
