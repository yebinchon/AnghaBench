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
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ tgl_peer_t ;
struct tgl_state {int dummy; } ;

/* Variables and functions */
#define  TGL_PEER_CHANNEL 130 
#define  TGL_PEER_CHAT 129 
#define  TGL_PEER_USER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tgl_state*,void*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct tgl_state*,void*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct tgl_state*,void*,int,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5 (struct tgl_state *TLSR, void *extra, int success, tgl_peer_t *U) {
  if (!success) { 
    FUNC3 (TLSR, extra, success, (void *)U);
    return;
  }
  switch (FUNC4 (U->id)) {
  case TGL_PEER_USER:
    FUNC3 (TLSR, extra, success, (void *)U);
    break;
  case TGL_PEER_CHAT:
    FUNC2 (TLSR, extra, success, (void *)U);
    break;
  case TGL_PEER_CHANNEL:
    FUNC1 (TLSR, extra, success, (void *)U);
    break;
  default:
    FUNC0 (0);
  }
}