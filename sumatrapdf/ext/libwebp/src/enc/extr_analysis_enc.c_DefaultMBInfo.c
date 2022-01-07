
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type_; scalar_t__ alpha_; scalar_t__ segment_; scalar_t__ skip_; scalar_t__ uv_mode_; } ;
typedef TYPE_1__ VP8MBInfo ;



__attribute__((used)) static void DefaultMBInfo(VP8MBInfo* const mb) {
  mb->type_ = 1;
  mb->uv_mode_ = 0;
  mb->skip_ = 0;
  mb->segment_ = 0;
  mb->alpha_ = 0;
}
