#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ tgl_peer_t ;
typedef  int /*<<< orphan*/  tgl_peer_id_t ;
struct username_peer_pair {TYPE_1__* peer; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int TGL_PEER_CHANNEL ; 
 int TGL_PEER_CHAT ; 
 int TGL_PEER_ENCR_CHAT ; 
 int /*<<< orphan*/  TGL_PEER_NOT_FOUND ; 
 int TGL_PEER_USER ; 
 int /*<<< orphan*/  TLS ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 struct username_peer_pair* FUNC9 (int /*<<< orphan*/ ,void*) ; 
 char* FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  username_peer_pair ; 

tgl_peer_id_t FUNC11 (const char *s, int l, int mask) {
  if (!s || l <= 0) { return TGL_PEER_NOT_FOUND; }

  if (*s == '$') {
    s ++;
    l --;
    if (l != 2 * sizeof (tgl_peer_id_t)) {
      return TGL_PEER_NOT_FOUND;
    }

    tgl_peer_id_t res;
    unsigned char *r = (void *)&res;
    int i;
    for (i = 0; i < l; i++) {
      if ((s[i] < '0' || s[i] > '9') && 
          (s[i] < 'a' || s[i] > 'f')) {
        return TGL_PEER_NOT_FOUND;
      }
    }
    for (i = 0; i < (int)sizeof (tgl_peer_id_t); i++) {
      r[i] = FUNC1 (s[2 * i]) * 16 + FUNC1 (s[2 * i + 1]);
    }

    if (mask && FUNC5 (res) != mask) {
      return TGL_PEER_NOT_FOUND;
    }

    return res;
  }

  if (*s == '@') {
    s ++;
    l --;
    char *tmp = FUNC10 (s, l);
    struct username_peer_pair *p = FUNC9 (username_peer_pair, (void *)&tmp);
    FUNC4 (tmp);
    if (p && (!mask || FUNC5 (p->peer->id) == mask)) {
      return p->peer->id;
    } else {
      return TGL_PEER_NOT_FOUND;
    }
  }

  const char *ss[] = {"user#id", "user#", "chat#id", "chat#", "secret_chat#id", "secret_chat#", "channel#id", "channel#"};
  int tt[] = {TGL_PEER_USER, TGL_PEER_USER, TGL_PEER_CHAT, TGL_PEER_CHAT, TGL_PEER_ENCR_CHAT, TGL_PEER_ENCR_CHAT, TGL_PEER_CHANNEL, TGL_PEER_CHANNEL};

  char *sc = FUNC10 (s, l);

  int i;
  for (i = 0; i < 8; i++) if (!mask || mask == tt[i]) {
    int x = FUNC3 (ss[i]);
    if (l > x && !FUNC2 (s, ss[i], x)) {
      int r = FUNC0 (sc + x);
      FUNC4 (sc);
      if (r < 0) { return TGL_PEER_NOT_FOUND; }
      tgl_peer_t *P = FUNC6 (TLS, FUNC8 (tt[i], r));
      if (!P) { return TGL_PEER_NOT_FOUND; }
      return P->id;
    }
  }

  tgl_peer_t *P = FUNC7 (TLS, sc); 
  FUNC4 (sc);
  
  if (P && (!mask || FUNC5 (P->id) == mask)) {
    return P->id;
  } else {
    return TGL_PEER_NOT_FOUND;
  }
}