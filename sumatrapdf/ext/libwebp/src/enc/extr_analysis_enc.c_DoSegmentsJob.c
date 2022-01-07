
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int VP8EncIterator ;
struct TYPE_2__ {int delta_progress; int uv_alpha; int alpha; int alphas; } ;
typedef TYPE_1__ SegmentJob ;


 int MBAnalyze (int * const,int ,int *,int *) ;
 int VP8IteratorImport (int * const,int * const) ;
 int VP8IteratorIsDone (int * const) ;
 scalar_t__ VP8IteratorNext (int * const) ;
 int VP8IteratorProgress (int * const,int ) ;
 scalar_t__ WEBP_ALIGN (int *) ;
 int WEBP_ALIGN_CST ;

__attribute__((used)) static int DoSegmentsJob(void* arg1, void* arg2) {
  SegmentJob* const job = (SegmentJob*)arg1;
  VP8EncIterator* const it = (VP8EncIterator*)arg2;
  int ok = 1;
  if (!VP8IteratorIsDone(it)) {
    uint8_t tmp[32 + WEBP_ALIGN_CST];
    uint8_t* const scratch = (uint8_t*)WEBP_ALIGN(tmp);
    do {

      VP8IteratorImport(it, scratch);
      MBAnalyze(it, job->alphas, &job->alpha, &job->uv_alpha);
      ok = VP8IteratorProgress(it, job->delta_progress);
    } while (ok && VP8IteratorNext(it));
  }
  return ok;
}
