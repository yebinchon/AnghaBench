
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ (* AccumulateFunc ) (int const*,int,int const*,int,int,int) ;


 scalar_t__ AccumulateLSIM (int const*,int,int const*,int,int,int) ;
 scalar_t__ AccumulateSSE (int const*,int,int const*,int,int,int) ;
 scalar_t__ AccumulateSSIM (int const*,int,int const*,int,int,int) ;
 scalar_t__ GetLogSSIM (float,double) ;
 scalar_t__ GetPSNR (float,double) ;
 int VP8SSIMDspInit () ;
 int WebPSafeFree (int *) ;
 scalar_t__ WebPSafeMalloc (unsigned long long,int) ;

int WebPPlaneDistortion(const uint8_t* src, size_t src_stride,
                        const uint8_t* ref, size_t ref_stride,
                        int width, int height, size_t x_step,
                        int type, float* distortion, float* result) {
  uint8_t* allocated = ((void*)0);
  const AccumulateFunc metric = (type == 0) ? AccumulateSSE :
                                (type == 1) ? AccumulateSSIM :
                                              AccumulateLSIM;
  if (src == ((void*)0) || ref == ((void*)0) ||
      src_stride < x_step * width || ref_stride < x_step * width ||
      result == ((void*)0) || distortion == ((void*)0)) {
    return 0;
  }

  VP8SSIMDspInit();
  if (x_step != 1) {
    int x, y;
    uint8_t* tmp1;
    uint8_t* tmp2;
    allocated =
        (uint8_t*)WebPSafeMalloc(2ULL * width * height, sizeof(*allocated));
    if (allocated == ((void*)0)) return 0;
    tmp1 = allocated;
    tmp2 = tmp1 + (size_t)width * height;
    for (y = 0; y < height; ++y) {
      for (x = 0; x < width; ++x) {
        tmp1[x + y * width] = src[x * x_step + y * src_stride];
        tmp2[x + y * width] = ref[x * x_step + y * ref_stride];
      }
    }
    src = tmp1;
    ref = tmp2;
  }
  *distortion = (float)metric(src, width, ref, width, width, height);
  WebPSafeFree(allocated);

  *result = (type == 1) ? (float)GetLogSSIM(*distortion, (double)width * height)
                        : (float)GetPSNR(*distortion, (double)width * height);
  return 1;
}
