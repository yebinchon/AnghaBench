#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* username; } ;
struct TYPE_5__ {char* username; } ;
struct TYPE_7__ {TYPE_2__ channel; int /*<<< orphan*/  id; TYPE_1__ user; } ;
typedef  TYPE_3__ tgl_peer_t ;
struct TYPE_8__ {int peer_num; TYPE_3__** Peers; } ;

/* Variables and functions */
 int TGL_PEER_CHANNEL ; 
 int TGL_PEER_USER ; 
 TYPE_4__* TLS ; 
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5 (int mode, int index, const char *text, int len, char **R) {
  *R = NULL;
  if (len > 0 && *text == '@') {
    text ++;
    len --;
  }
  index ++;
  while (index < TLS->peer_num) {
    tgl_peer_t *P = TLS->Peers[index];
    if (mode && FUNC4 (P->id) != mode) {
      index ++;
      continue;
    }
    char *u = NULL;
    if (FUNC4 (P->id) == TGL_PEER_USER) {
      u = P->user.username;
    } else if (FUNC4 (P->id) == TGL_PEER_CHANNEL) {
      u = P->channel.username;
    }
    if (!u) {
      index ++;
      continue;
    }
    if ((int)FUNC3 (u) < len || FUNC1 (u, text, len)) {
      index ++;
      continue;
    }
    *R = FUNC0 (FUNC3 (u) + 2);
    *R[0] = '@';
    FUNC2 (*R + 1, u, FUNC3 (u) + 1);
    break;
  }
  if (index == TLS->peer_num) {
    return -1;
  }
  return index;
}