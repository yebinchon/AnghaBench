#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  p_encoder; } ;
typedef  TYPE_1__ transcode_encoder_t ;
typedef  int /*<<< orphan*/  transcode_encoder_config_t ;
typedef  int /*<<< orphan*/  audio_format_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

int FUNC1( const transcode_encoder_config_t *p_cfg,
                                       const audio_format_t *p_dec_out,
                                       transcode_encoder_t *p_enc,
                                       bool b_keep_fmtin )
{
    return FUNC0( p_cfg, p_dec_out, p_enc->p_encoder, b_keep_fmtin );
}