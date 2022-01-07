
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* progress_hook ) (int,TYPE_1__ const* const) ;} ;
typedef TYPE_1__ WebPPicture ;


 int VP8_ENC_ERROR_USER_ABORT ;
 int WebPEncodingSetError (TYPE_1__ const* const,int ) ;
 int stub1 (int,TYPE_1__ const* const) ;

int WebPReportProgress(const WebPPicture* const pic,
                       int percent, int* const percent_store) {
  if (percent_store != ((void*)0) && percent != *percent_store) {
    *percent_store = percent;
    if (pic->progress_hook && !pic->progress_hook(percent, pic)) {

      WebPEncodingSetError(pic, VP8_ENC_ERROR_USER_ABORT);
      return 0;
    }
  }
  return 1;
}
