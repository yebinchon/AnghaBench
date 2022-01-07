
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_peer_id_t ;
typedef int tgl_message_id_t ;
struct tgl_state {int dummy; } ;


 int TLS ;
 int on_started (int ) ;

void clist_cb (struct tgl_state *TLSR, void *callback_extra, int success, int size, tgl_peer_id_t peers[], tgl_message_id_t *last_msg_id[], int unread_count[]) {
  on_started (TLS);
}
