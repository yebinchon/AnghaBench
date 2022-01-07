
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tgl_peer_id_t ;
struct tgl_message {int flags; int to_id; int from_id; } ;
struct in_ev {int dummy; } ;
typedef int json_t ;
struct TYPE_3__ {int our_id; } ;


 int COLOR_YELLOW ;
 int TGLMF_OUT ;



 TYPE_1__* TLS ;
 int assert (int) ;
 scalar_t__ enable_json ;
 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_pack_read (struct tgl_message*) ;
 int mpop_color (struct in_ev*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,...) ;
 int mpush_color (struct in_ev*,int ) ;
 struct in_ev* notify_ev ;
 int print_chat_name (struct in_ev*,int ,int ) ;
 int print_encr_chat_name (struct in_ev*,int ,int ) ;
 int print_user_name (struct in_ev*,int ,int ) ;
 int tgl_cmp_peer_id (int ,int ) ;
 int tgl_get_peer_type (int ) ;
 int tgl_peer_get (TYPE_1__*,int ) ;

void print_read_list (int num, struct tgl_message *list[]) {
  struct in_ev *ev = notify_ev;
  int i;
  mprint_start (ev);
  for (i = 0; i < num; i++) if (list[i]) {
    if (enable_json) {







    }
    tgl_peer_id_t to_id;
    if (!tgl_cmp_peer_id (list[i]->to_id, TLS->our_id)) {
      to_id = list[i]->from_id;
    } else {
      to_id = list[i]->to_id;
    }
    int j;
    int c1 = 0;
    int c2 = 0;
    for (j = i; j < num; j++) if (list[j]) {
      tgl_peer_id_t end_id;
      if (!tgl_cmp_peer_id (list[j]->to_id, TLS->our_id)) {
        end_id = list[j]->from_id;
      } else {
        end_id = list[j]->to_id;
      }
      if (!tgl_cmp_peer_id (to_id, end_id)) {
        if (list[j]->flags & TGLMF_OUT) {
          c1 ++;
        } else {
          c2 ++;
        }
        list[j] = 0;
      }
    }

    assert (c1 + c2 > 0);
    if (!enable_json) {
      mpush_color (ev, COLOR_YELLOW);
      switch (tgl_get_peer_type (to_id)) {
      case 128:
        mprintf (ev, "User ");
        print_user_name (ev, to_id, tgl_peer_get (TLS, to_id));
        break;
      case 130:
        mprintf (ev, "Chat ");
        print_chat_name (ev, to_id, tgl_peer_get (TLS, to_id));
        break;
      case 129:
        mprintf (ev, "Secret chat ");
        print_encr_chat_name (ev, to_id, tgl_peer_get (TLS, to_id));
        break;
      default:
        assert (0);
      }
      mprintf (ev, " marked read %d outbox and %d inbox messages\n", c1, c2);
      mpop_color (ev);
    }
  }
  mprint_end (ev);
}
