
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int strm_cfunc_value (int ) ;
 int strm_var_def (int *,char*,int ) ;
 int tcp_server ;
 int tcp_socket ;

void
strm_socket_init(strm_state* state)
{
  strm_var_def(state, "tcp_server", strm_cfunc_value(tcp_server));
  strm_var_def(state, "tcp_socket", strm_cfunc_value(tcp_socket));
}
