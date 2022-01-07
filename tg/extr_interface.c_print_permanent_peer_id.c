
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_peer_id_t ;


 int sprintf (char*,char*,unsigned int) ;

char *print_permanent_peer_id (tgl_peer_id_t id) {
  static char buf[2 * sizeof (tgl_peer_id_t) + 2];
  buf[0] = '$';

  unsigned char *s = (void *)&id;
  int i;
  for (i = 0; i < (int)sizeof (tgl_peer_id_t); i++) {
    sprintf (buf + 1 + 2 * i, "%02x", (unsigned)s[i]);
  }
  return buf;
}
