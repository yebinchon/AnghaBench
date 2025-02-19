
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {TYPE_1__* config_; } ;
typedef TYPE_2__ VP8Encoder ;
struct TYPE_8__ {int is_first; float dq; double target; int value; int last_value; int do_size_search; int last_q; int q; } ;
struct TYPE_6__ {float target_PSNR; int quality; int target_size; } ;
typedef TYPE_3__ PassStats ;



__attribute__((used)) static int InitPassStats(const VP8Encoder* const enc, PassStats* const s) {
  const uint64_t target_size = (uint64_t)enc->config_->target_size;
  const int do_size_search = (target_size != 0);
  const float target_PSNR = enc->config_->target_PSNR;

  s->is_first = 1;
  s->dq = 10.f;
  s->q = s->last_q = enc->config_->quality;
  s->target = do_size_search ? (double)target_size
            : (target_PSNR > 0.) ? target_PSNR
            : 40.;
  s->value = s->last_value = 0.;
  s->do_size_search = do_size_search;
  return do_size_search;
}
