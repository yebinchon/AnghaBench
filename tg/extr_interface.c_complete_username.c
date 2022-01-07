
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* username; } ;
struct TYPE_5__ {char* username; } ;
struct TYPE_7__ {TYPE_2__ channel; int id; TYPE_1__ user; } ;
typedef TYPE_3__ tgl_peer_t ;
struct TYPE_8__ {int peer_num; TYPE_3__** Peers; } ;


 int TGL_PEER_CHANNEL ;
 int TGL_PEER_USER ;
 TYPE_4__* TLS ;
 char* malloc (scalar_t__) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int memcpy (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int tgl_get_peer_type (int ) ;

int complete_username (int mode, int index, const char *text, int len, char **R) {
  *R = ((void*)0);
  if (len > 0 && *text == '@') {
    text ++;
    len --;
  }
  index ++;
  while (index < TLS->peer_num) {
    tgl_peer_t *P = TLS->Peers[index];
    if (mode && tgl_get_peer_type (P->id) != mode) {
      index ++;
      continue;
    }
    char *u = ((void*)0);
    if (tgl_get_peer_type (P->id) == TGL_PEER_USER) {
      u = P->user.username;
    } else if (tgl_get_peer_type (P->id) == TGL_PEER_CHANNEL) {
      u = P->channel.username;
    }
    if (!u) {
      index ++;
      continue;
    }
    if ((int)strlen (u) < len || memcmp (u, text, len)) {
      index ++;
      continue;
    }
    *R = malloc (strlen (u) + 2);
    *R[0] = '@';
    memcpy (*R + 1, u, strlen (u) + 1);
    break;
  }
  if (index == TLS->peer_num) {
    return -1;
  }
  return index;
}
