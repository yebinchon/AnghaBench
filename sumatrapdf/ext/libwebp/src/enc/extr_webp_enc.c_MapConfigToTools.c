
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int score_t ;
struct TYPE_4__ {int method; int partition_limit; scalar_t__ target_size; scalar_t__ target_PSNR; int low_memory; int thread_level; } ;
typedef TYPE_1__ WebPConfig ;
struct TYPE_5__ {int method_; scalar_t__ rd_opt_level_; int max_i4_header_bits_; int mb_header_limit_; int mb_w_; int mb_h_; int do_search_; int use_tokens_; int num_parts_; int thread_level_; TYPE_1__* config_; } ;
typedef TYPE_2__ VP8Encoder ;


 scalar_t__ RD_OPT_BASIC ;
 scalar_t__ RD_OPT_NONE ;
 scalar_t__ RD_OPT_TRELLIS ;
 scalar_t__ RD_OPT_TRELLIS_ALL ;

__attribute__((used)) static void MapConfigToTools(VP8Encoder* const enc) {
  const WebPConfig* const config = enc->config_;
  const int method = config->method;
  const int limit = 100 - config->partition_limit;
  enc->method_ = method;
  enc->rd_opt_level_ = (method >= 6) ? RD_OPT_TRELLIS_ALL
                     : (method >= 5) ? RD_OPT_TRELLIS
                     : (method >= 3) ? RD_OPT_BASIC
                     : RD_OPT_NONE;
  enc->max_i4_header_bits_ =
      256 * 16 * 16 *
      (limit * limit) / (100 * 100);


  enc->mb_header_limit_ =
      (score_t)256 * 510 * 8 * 1024 / (enc->mb_w_ * enc->mb_h_);

  enc->thread_level_ = config->thread_level;

  enc->do_search_ = (config->target_size > 0 || config->target_PSNR > 0);
  if (!config->low_memory) {

    enc->use_tokens_ = (enc->rd_opt_level_ >= RD_OPT_BASIC);

    if (enc->use_tokens_) {
      enc->num_parts_ = 1;
    }
  }
}
