
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VP8Histogram ;
struct TYPE_5__ {scalar_t__ yuv_p_; scalar_t__ yuv_in_; } ;
typedef TYPE_1__ VP8EncIterator ;


 int DEFAULT_ALPHA ;
 int GetAlpha (int *) ;
 scalar_t__ IS_BETTER_ALPHA (int,int) ;
 int InitHistogram (int *) ;
 int MAX_INTRA16_MODE ;
 int VP8CollectHistogram (scalar_t__,scalar_t__,int ,int,int *) ;
 scalar_t__* VP8I16ModeOffsets ;
 int VP8MakeLuma16Preds (TYPE_1__* const) ;
 int VP8SetIntra16Mode (TYPE_1__* const,int) ;
 scalar_t__ Y_OFF_ENC ;

__attribute__((used)) static int MBAnalyzeBestIntra16Mode(VP8EncIterator* const it) {
  const int max_mode = MAX_INTRA16_MODE;
  int mode;
  int best_alpha = DEFAULT_ALPHA;
  int best_mode = 0;

  VP8MakeLuma16Preds(it);
  for (mode = 0; mode < max_mode; ++mode) {
    VP8Histogram histo;
    int alpha;

    InitHistogram(&histo);
    VP8CollectHistogram(it->yuv_in_ + Y_OFF_ENC,
                        it->yuv_p_ + VP8I16ModeOffsets[mode],
                        0, 16, &histo);
    alpha = GetAlpha(&histo);
    if (IS_BETTER_ALPHA(alpha, best_alpha)) {
      best_alpha = alpha;
      best_mode = mode;
    }
  }
  VP8SetIntra16Mode(it, best_mode);
  return best_alpha;
}
