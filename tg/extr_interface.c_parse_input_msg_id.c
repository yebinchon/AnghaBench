
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long id; scalar_t__ peer_type; } ;
typedef TYPE_1__ tgl_message_id_t ;
typedef int id ;


 scalar_t__ TGL_PEER_TEMP_ID ;
 int hex2int (char const) ;
 int memset (TYPE_1__*,int ,int) ;
 long long strtoll (char*,char**,int ) ;
 int tfree_str (char*) ;
 char* tstrndup (char const*,int) ;

tgl_message_id_t parse_input_msg_id (const char *s, int l) {
  if (!s || l <= 0) {
    tgl_message_id_t id;
    memset (&id, 0, sizeof (id));
    id.peer_type = 0;
    return id;
  } else {
    tgl_message_id_t id;
    memset (&id, 0, sizeof (id));

    if (l == 2 * sizeof (tgl_message_id_t)) {
      int i;
      for (i = 0; i < (int)sizeof (tgl_message_id_t); i++) {
        if (
          (s[i] < '0' || s[i] > '9') &&
          (s[i] < 'a' || s[i] > 'f')
        ) {
          id.peer_type = 0;
          return id;
        }
      }
      unsigned char *d = (void *)&id;
      for (i = 0; i < (int)sizeof (tgl_message_id_t); i++) {
        d[i] = hex2int (s[2 * i]) * 16 + hex2int (s[2 * i + 1]);
      }
      return id;
    } else {
      char *sc = tstrndup (s, l);
      char *end = 0;
      long long x = strtoll (sc, &end, 0);
      tfree_str (sc);
      if (end != sc + l) {
        id.peer_type = 0;
      } else {
        id.peer_type = TGL_PEER_TEMP_ID;
        id.id = x;
      }
      return id;
    }
  }
}
