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
struct tgl_secret_chat {scalar_t__ state; int* print_name; int user_id; int admin_id; int date; int ttl; int layer; int access_hash; int key_fingerprint; int key; int first_key_sha; int in_seq_no; int last_in_seq_no; int out_seq_no; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ TGL_PEER_ENCR_CHAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ sc_ok ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int*,int) ; 

void FUNC5 (tgl_peer_t *Peer, void *extra) {
  struct tgl_secret_chat *P = (void *)Peer;
  if (FUNC3 (P->id) != TGL_PEER_ENCR_CHAT) { return; }
  if (P->state != sc_ok) { return; }
  int *a = extra;
  int fd = a[0];
  a[1] ++;

  int id = FUNC2 (P->id);
  FUNC0 (FUNC4 (fd, &id, 4) == 4);
  //assert (write (fd, &P->flags, 4) == 4);
  int l = FUNC1 (P->print_name);
  FUNC0 (FUNC4 (fd, &l, 4) == 4);
  FUNC0 (FUNC4 (fd, P->print_name, l) == l);
  FUNC0 (FUNC4 (fd, &P->user_id, 4) == 4);
  FUNC0 (FUNC4 (fd, &P->admin_id, 4) == 4);
  FUNC0 (FUNC4 (fd, &P->date, 4) == 4);
  FUNC0 (FUNC4 (fd, &P->ttl, 4) == 4);
  FUNC0 (FUNC4 (fd, &P->layer, 4) == 4);
  FUNC0 (FUNC4 (fd, &P->access_hash, 8) == 8);
  FUNC0 (FUNC4 (fd, &P->state, 4) == 4);
  FUNC0 (FUNC4 (fd, &P->key_fingerprint, 8) == 8);
  FUNC0 (FUNC4 (fd, &P->key, 256) == 256);
  FUNC0 (FUNC4 (fd, &P->first_key_sha, 20) == 20);
  FUNC0 (FUNC4 (fd, &P->in_seq_no, 4) == 4);
  FUNC0 (FUNC4 (fd, &P->last_in_seq_no, 4) == 4);
  FUNC0 (FUNC4 (fd, &P->out_seq_no, 4) == 4);
}