#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  title; } ;
struct TYPE_5__ {TYPE_1__ channel; } ;
typedef  TYPE_2__ tgl_peer_t ;
typedef  int /*<<< orphan*/  tgl_peer_id_t ;
struct in_ev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_CYAN ; 
 scalar_t__ TGL_PEER_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*,int /*<<< orphan*/ ) ; 
 scalar_t__ permanent_peer_id_mode ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ use_ids ; 

void FUNC7 (struct in_ev *ev, tgl_peer_id_t id, tgl_peer_t *C) {
  FUNC0 (FUNC6 (id) == TGL_PEER_CHANNEL);
  FUNC3 (ev, COLOR_CYAN);
  if (permanent_peer_id_mode) {
    FUNC4 (ev, id);
    FUNC1 (ev);
    return;
  }
  if (!C || use_ids) {
    FUNC2 (ev, "channel#%d", FUNC5 (id));
  } else {
    FUNC2 (ev, "%s", C->channel.title);
  }
  FUNC1 (ev);
}