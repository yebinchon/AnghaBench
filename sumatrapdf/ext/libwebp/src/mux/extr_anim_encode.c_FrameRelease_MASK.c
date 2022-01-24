#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  bitstream; } ;
struct TYPE_6__ {int /*<<< orphan*/  bitstream; } ;
struct TYPE_8__ {TYPE_2__ key_frame_; TYPE_1__ sub_frame_; } ;
typedef  TYPE_3__ EncodedFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__* const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(EncodedFrame* const encoded_frame) {
  if (encoded_frame != NULL) {
    FUNC0(&encoded_frame->sub_frame_.bitstream);
    FUNC0(&encoded_frame->key_frame_.bitstream);
    FUNC1(encoded_frame, 0, sizeof(*encoded_frame));
  }
}