
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int dummy; } ;
struct tgl_channel {int username; } ;


 struct tgl_state* TLS ;
 int assert (int) ;
 int binlog_read ;
 scalar_t__ disable_output ;
 int notify_ev ;
 int peer_update_username (void*,int ) ;

void channel_update_gw (struct tgl_state *TLSR, struct tgl_channel *U, unsigned flags) {
  assert (TLSR == TLS);

  peer_update_username ((void *)U, U->username);

  if (disable_output && !notify_ev) { return; }
  if (!binlog_read) { return; }
}
