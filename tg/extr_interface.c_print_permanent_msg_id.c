
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_message_id_t ;


 int sprintf (char*,char*,unsigned int) ;

char *print_permanent_msg_id (tgl_message_id_t id) {
  static char buf[2 * sizeof (tgl_message_id_t) + 1];

  unsigned char *s = (void *)&id;
  int i;
  for (i = 0; i < (int)sizeof (tgl_message_id_t); i++) {
    sprintf (buf + 2 * i, "%02x", (unsigned)s[i]);
  }
  return buf;
}
