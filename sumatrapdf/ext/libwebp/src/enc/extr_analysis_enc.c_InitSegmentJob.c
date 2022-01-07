
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int mb_w_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_11__ {int (* Init ) (TYPE_3__*) ;} ;
struct TYPE_10__ {int hook; int * data2; TYPE_2__* data1; } ;
struct TYPE_9__ {int delta_progress; scalar_t__ uv_alpha; scalar_t__ alpha; int alphas; int it; TYPE_3__ worker; } ;
typedef TYPE_2__ SegmentJob ;


 int DoSegmentsJob ;
 int VP8IteratorInit (TYPE_1__* const,int *) ;
 int VP8IteratorSetCountDown (int *,int) ;
 int VP8IteratorSetRow (int *,int) ;
 TYPE_4__* WebPGetWorkerInterface () ;
 int memset (int ,int ,int) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void InitSegmentJob(VP8Encoder* const enc, SegmentJob* const job,
                           int start_row, int end_row) {
  WebPGetWorkerInterface()->Init(&job->worker);
  job->worker.data1 = job;
  job->worker.data2 = &job->it;
  job->worker.hook = DoSegmentsJob;
  VP8IteratorInit(enc, &job->it);
  VP8IteratorSetRow(&job->it, start_row);
  VP8IteratorSetCountDown(&job->it, (end_row - start_row) * enc->mb_w_);
  memset(job->alphas, 0, sizeof(job->alphas));
  job->alpha = 0;
  job->uv_alpha = 0;


  job->delta_progress = (start_row == 0) ? 20 : 0;
}
