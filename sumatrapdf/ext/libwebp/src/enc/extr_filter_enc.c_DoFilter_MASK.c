#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int simple_; } ;
struct TYPE_8__ {TYPE_2__ filter_hdr_; TYPE_1__* config_; } ;
typedef  TYPE_3__ VP8Encoder ;
struct TYPE_9__ {int /*<<< orphan*/  yuv_out_; int /*<<< orphan*/ * yuv_out2_; TYPE_3__* enc_; } ;
typedef  TYPE_4__ VP8EncIterator ;
struct TYPE_6__ {int /*<<< orphan*/  filter_sharpness; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int U_OFF_ENC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int const,int const,int const) ; 
 int V_OFF_ENC ; 
 int YUV_SIZE_ENC ; 
 int Y_OFF_ENC ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(const VP8EncIterator* const it, int level) {
  const VP8Encoder* const enc = it->enc_;
  const int ilevel = FUNC0(enc->config_->filter_sharpness, level);
  const int limit = 2 * level + ilevel;

  uint8_t* const y_dst = it->yuv_out2_ + Y_OFF_ENC;
  uint8_t* const u_dst = it->yuv_out2_ + U_OFF_ENC;
  uint8_t* const v_dst = it->yuv_out2_ + V_OFF_ENC;

  // copy current block to yuv_out2_
  FUNC7(y_dst, it->yuv_out_, YUV_SIZE_ENC * sizeof(uint8_t));

  if (enc->filter_hdr_.simple_ == 1) {   // simple
    FUNC3(y_dst, BPS, limit);
    FUNC4(y_dst, BPS, limit);
  } else {    // complex
    const int hev_thresh = (level >= 40) ? 2 : (level >= 15) ? 1 : 0;
    FUNC1(y_dst, BPS, limit, ilevel, hev_thresh);
    FUNC2(u_dst, v_dst, BPS, limit, ilevel, hev_thresh);
    FUNC5(y_dst, BPS, limit, ilevel, hev_thresh);
    FUNC6(u_dst, v_dst, BPS, limit, ilevel, hev_thresh);
  }
}