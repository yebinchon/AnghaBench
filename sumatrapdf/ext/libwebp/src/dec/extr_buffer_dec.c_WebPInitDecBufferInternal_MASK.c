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
typedef  int /*<<< orphan*/  WebPDecBuffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WEBP_DECODER_ABI_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC2(WebPDecBuffer* buffer, int version) {
  if (FUNC0(version, WEBP_DECODER_ABI_VERSION)) {
    return 0;  // version mismatch
  }
  if (buffer == NULL) return 0;
  FUNC1(buffer, 0, sizeof(*buffer));
  return 1;
}