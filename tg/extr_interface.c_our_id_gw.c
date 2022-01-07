
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_peer_id_t ;
struct tgl_state {int dummy; } ;


 struct tgl_state* TLS ;
 int assert (int) ;
 int lua_our_id (int ) ;
 int py_our_id (int ) ;

void our_id_gw (struct tgl_state *TLSR, tgl_peer_id_t id) {
  assert (TLSR == TLS);






}
