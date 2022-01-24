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
typedef  int /*<<< orphan*/  tgl_peer_id_t ;
struct tgl_message {int flags; int /*<<< orphan*/  to_id; int /*<<< orphan*/  from_id; } ;
struct in_ev {int dummy; } ;
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {int /*<<< orphan*/  our_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_YELLOW ; 
 int TGLMF_OUT ; 
#define  TGL_PEER_CHAT 130 
#define  TGL_PEER_ENCR_CHAT 129 
#define  TGL_PEER_USER 128 
 TYPE_1__* TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ enable_json ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct tgl_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC7 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC8 (struct in_ev*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct in_ev*,int /*<<< orphan*/ ) ; 
 struct in_ev* notify_ev ; 
 int /*<<< orphan*/  FUNC10 (struct in_ev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct in_ev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct in_ev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC16 (int num, struct tgl_message *list[]) {
  struct in_ev *ev = notify_ev;
  int i;
  FUNC7 (ev);
  for (i = 0; i < num; i++) if (list[i]) {
    if (enable_json) {
      #ifdef USE_JSON
        json_t *res = json_pack_read (list[i]);
        char *s = json_dumps (res, 0);
        mprintf (ev, "%s\n", s);
        json_decref (res);
        free (s);
      #endif
    }
    tgl_peer_id_t to_id;
    if (!FUNC13 (list[i]->to_id, TLS->our_id)) {
      to_id = list[i]->from_id;
    } else {
      to_id = list[i]->to_id;
    }
    int j;
    int c1 = 0;
    int c2 = 0;
    for (j = i; j < num; j++) if (list[j]) {
      tgl_peer_id_t end_id;
      if (!FUNC13 (list[j]->to_id, TLS->our_id)) {
        end_id = list[j]->from_id;
      } else {
        end_id = list[j]->to_id;
      }
      if (!FUNC13 (to_id, end_id)) {
        if (list[j]->flags & TGLMF_OUT) {
          c1 ++;
        } else {
          c2 ++;
        }
        list[j] = 0;
      }
    }

    FUNC0 (c1 + c2 > 0);
    if (!enable_json)  {
      FUNC9 (ev, COLOR_YELLOW);
      switch (FUNC14 (to_id)) {
      case TGL_PEER_USER:
        FUNC8 (ev, "User ");
        FUNC12 (ev, to_id, FUNC15 (TLS, to_id));
        break;
      case TGL_PEER_CHAT:
        FUNC8 (ev, "Chat ");
        FUNC10 (ev, to_id, FUNC15 (TLS, to_id));
        break;
      case TGL_PEER_ENCR_CHAT:
        FUNC8 (ev, "Secret chat ");
        FUNC11 (ev, to_id, FUNC15 (TLS, to_id));
        break;
      default:
        FUNC0 (0);
      }
      FUNC8 (ev, " marked read %d outbox and %d inbox messages\n", c1, c2);
      FUNC5 (ev);
    }
  }
  FUNC6 (ev);
}