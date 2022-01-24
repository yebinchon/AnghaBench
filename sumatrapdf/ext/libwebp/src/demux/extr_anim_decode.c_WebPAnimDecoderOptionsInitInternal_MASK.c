#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WebPAnimDecoderOptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WEBP_DEMUX_ABI_VERSION ; 

int FUNC2(WebPAnimDecoderOptions* dec_options,
                                       int abi_version) {
  if (dec_options == NULL ||
      FUNC1(abi_version, WEBP_DEMUX_ABI_VERSION)) {
    return 0;
  }
  FUNC0(dec_options);
  return 1;
}