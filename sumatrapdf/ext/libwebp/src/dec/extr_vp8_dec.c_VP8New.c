
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_parts_minus_one_; scalar_t__ ready_; int worker_; } ;
typedef TYPE_1__ VP8Decoder ;
struct TYPE_6__ {int (* Init ) (int *) ;} ;


 int InitGetCoeffs () ;
 int SetOk (TYPE_1__* const) ;
 TYPE_2__* WebPGetWorkerInterface () ;
 scalar_t__ WebPSafeCalloc (unsigned long long,int) ;
 int stub1 (int *) ;

VP8Decoder* VP8New(void) {
  VP8Decoder* const dec = (VP8Decoder*)WebPSafeCalloc(1ULL, sizeof(*dec));
  if (dec != ((void*)0)) {
    SetOk(dec);
    WebPGetWorkerInterface()->Init(&dec->worker_);
    dec->ready_ = 0;
    dec->num_parts_minus_one_ = 0;
    InitGetCoeffs();
  }
  return dec;
}
