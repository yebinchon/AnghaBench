
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_stream ;


 int NODE_ERROR_RUNTIME ;
 int strlen (char const*) ;
 int strm_set_exc (int *,int ,int ) ;
 int strm_str_new (char const*,int ) ;
 int strm_str_value (int ) ;

void
strm_raise(strm_stream* strm, const char* msg)
{
  if (!strm) return;
  strm_set_exc(strm, NODE_ERROR_RUNTIME,
               strm_str_value(strm_str_new(msg, strlen(msg))));
}
