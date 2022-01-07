
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int strm_array_init (int *) ;
 int strm_csv_init (int *) ;
 int strm_graph_init (int *) ;
 int strm_iter_init (int *) ;
 int strm_kvs_init (int *) ;
 int strm_latch_init (int *) ;
 int strm_math_init (int *) ;
 int strm_number_init (int *) ;
 int strm_socket_init (int *) ;
 int strm_string_init (int *) ;
 int strm_time_init (int *) ;

void
strm_init(strm_state* state)
{
  strm_number_init(state);
  strm_array_init(state);
  strm_string_init(state);
  strm_latch_init(state);
  strm_iter_init(state);
  strm_socket_init(state);
  strm_csv_init(state);
  strm_kvs_init(state);
  strm_time_init(state);
  strm_math_init(state);
  strm_graph_init(state);
}
