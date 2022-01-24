#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long long id; scalar_t__ peer_type; } ;
typedef  TYPE_1__ tgl_message_id_t ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 scalar_t__ TGL_PEER_TEMP_ID ; 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 long long FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int) ; 

tgl_message_id_t FUNC5 (const char *s, int l) {
  if (!s || l <= 0) {
    tgl_message_id_t id;
    FUNC1 (&id, 0, sizeof (id));
    id.peer_type = 0;
    return id;
  } else {    
    tgl_message_id_t id;
    FUNC1 (&id, 0, sizeof (id));

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
        d[i] = FUNC0 (s[2 * i]) * 16 + FUNC0 (s[2 * i + 1]);
      }     
      return id;
    } else {
      char *sc = FUNC4 (s, l);
      char *end = 0;
      long long x = FUNC2 (sc, &end, 0);
      FUNC3 (sc);
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