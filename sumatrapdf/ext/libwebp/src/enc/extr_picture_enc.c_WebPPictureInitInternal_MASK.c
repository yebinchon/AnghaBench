#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  writer; } ;
typedef  TYPE_1__ WebPPicture ;

/* Variables and functions */
 int /*<<< orphan*/  DummyWriter ; 
 int /*<<< orphan*/  VP8_ENC_OK ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WEBP_ENCODER_ABI_VERSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC3(WebPPicture* picture, int version) {
  if (FUNC0(version, WEBP_ENCODER_ABI_VERSION)) {
    return 0;   // caller/system version mismatch!
  }
  if (picture != NULL) {
    FUNC2(picture, 0, sizeof(*picture));
    picture->writer = DummyWriter;
    FUNC1(picture, VP8_ENC_OK);
  }
  return 1;
}