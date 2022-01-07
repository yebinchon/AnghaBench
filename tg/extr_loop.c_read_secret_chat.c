
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TGLECF_CREATE ;
 int TGLECF_CREATED ;
 int TLS ;
 int assert (int) ;
 int bl_do_encr_chat (int ,int,long long*,int*,int*,int*,unsigned char*,int *,unsigned char*,int*,int*,int*,int*,int*,int*,long long*,int,int *,int ) ;
 int read (int,...) ;

void read_secret_chat (int fd, int v) {
  int id, l, user_id, admin_id, date, ttl, layer, state;
  long long access_hash, key_fingerprint;
  static char s[1000];
  static unsigned char key[256];
  static unsigned char sha[20];
  assert (read (fd, &id, 4) == 4);

  assert (read (fd, &l, 4) == 4);
  assert (l > 0 && l < 1000);
  assert (read (fd, s, l) == l);
  assert (read (fd, &user_id, 4) == 4);
  assert (read (fd, &admin_id, 4) == 4);
  assert (read (fd, &date, 4) == 4);
  assert (read (fd, &ttl, 4) == 4);
  assert (read (fd, &layer, 4) == 4);
  assert (read (fd, &access_hash, 8) == 8);
  assert (read (fd, &state, 4) == 4);
  assert (read (fd, &key_fingerprint, 8) == 8);
  assert (read (fd, &key, 256) == 256);
  assert (read (fd, sha, 20) == 20);
  int in_seq_no = 0, out_seq_no = 0, last_in_seq_no = 0;
  if (v >= 1) {
    assert (read (fd, &in_seq_no, 4) == 4);
    assert (read (fd, &last_in_seq_no, 4) == 4);
    assert (read (fd, &out_seq_no, 4) == 4);
  }

  bl_do_encr_chat (TLS, id,
    &access_hash,
    &date,
    &admin_id,
    &user_id,
    key,
    ((void*)0),
    sha,
    &state,
    &ttl,
    &layer,
    &in_seq_no,
    &last_in_seq_no,
    &out_seq_no,
    &key_fingerprint,
    TGLECF_CREATE | TGLECF_CREATED,
    ((void*)0), 0
  );

}
