
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_peer_id_t ;


 int TGL_PEER_ENCR_CHAT ;
 int cur_token ;
 int cur_token_len ;
 int parse_input_peer_id (int ,int ,int ) ;

tgl_peer_id_t cur_token_encr_chat (void) {
  return parse_input_peer_id (cur_token, cur_token_len, TGL_PEER_ENCR_CHAT);
}
