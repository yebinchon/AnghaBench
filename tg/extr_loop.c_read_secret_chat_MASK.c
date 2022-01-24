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

/* Variables and functions */
 int TGLECF_CREATE ; 
 int TGLECF_CREATED ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,long long*,int*,int*,int*,unsigned char*,int /*<<< orphan*/ *,unsigned char*,int*,int*,int*,int*,int*,int*,long long*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,...) ; 

void FUNC3 (int fd, int v) {
  int id, l, user_id, admin_id, date, ttl, layer, state;
  long long access_hash, key_fingerprint;
  static char s[1000];
  static unsigned char key[256];
  static unsigned char sha[20];
  FUNC0 (FUNC2 (fd, &id, 4) == 4);
  //assert (read (fd, &flags, 4) == 4);
  FUNC0 (FUNC2 (fd, &l, 4) == 4);
  FUNC0 (l > 0 && l < 1000);
  FUNC0 (FUNC2 (fd, s, l) == l);
  FUNC0 (FUNC2 (fd, &user_id, 4) == 4);
  FUNC0 (FUNC2 (fd, &admin_id, 4) == 4);
  FUNC0 (FUNC2 (fd, &date, 4) == 4);
  FUNC0 (FUNC2 (fd, &ttl, 4) == 4);
  FUNC0 (FUNC2 (fd, &layer, 4) == 4);
  FUNC0 (FUNC2 (fd, &access_hash, 8) == 8);
  FUNC0 (FUNC2 (fd, &state, 4) == 4);
  FUNC0 (FUNC2 (fd, &key_fingerprint, 8) == 8);
  FUNC0 (FUNC2 (fd, &key, 256) == 256);
  FUNC0 (FUNC2 (fd, sha, 20) == 20);
  int in_seq_no = 0, out_seq_no = 0, last_in_seq_no = 0;
  if (v >= 1) {
    FUNC0 (FUNC2 (fd, &in_seq_no, 4) == 4);
    FUNC0 (FUNC2 (fd, &last_in_seq_no, 4) == 4);
    FUNC0 (FUNC2 (fd, &out_seq_no, 4) == 4);
  }

  FUNC1 (TLS, id, 
    &access_hash,
    &date,
    &admin_id,
    &user_id,
    key,
    NULL,
    sha,
    &state,
    &ttl,
    &layer,
    &in_seq_no,
    &last_in_seq_no,
    &out_seq_no,
    &key_fingerprint,
    TGLECF_CREATE | TGLECF_CREATED,
    NULL, 0
  );
    
}