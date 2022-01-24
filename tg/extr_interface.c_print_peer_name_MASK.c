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
typedef  int /*<<< orphan*/  tgl_peer_t ;
typedef  int /*<<< orphan*/  tgl_peer_id_t ;
struct in_ev {int dummy; } ;

/* Variables and functions */
#define  TGL_PEER_CHANNEL 131 
#define  TGL_PEER_CHAT 130 
#define  TGL_PEER_ENCR_CHAT 129 
#define  TGL_PEER_USER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct in_ev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6  (struct in_ev *ev, tgl_peer_id_t id, tgl_peer_t *C) {
  switch (FUNC5 (id)) {
  case TGL_PEER_USER:
    FUNC4 (ev, id, C);
    return;
  case TGL_PEER_CHAT:
    FUNC2 (ev, id, C);
    return;
  case TGL_PEER_CHANNEL:
    FUNC1 (ev, id, C);
    return;
  case TGL_PEER_ENCR_CHAT:
    FUNC3 (ev, id, C);
    return;
  default:
    FUNC0 (0);
  }
}