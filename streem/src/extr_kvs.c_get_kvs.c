
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_kvs ;


 int STRM_PTR_AUX ;
 scalar_t__ strm_value_ptr (int ,int ) ;

__attribute__((used)) static strm_kvs*
get_kvs(int argc, strm_value* args)
{
  if (argc == 0) return ((void*)0);
  return (strm_kvs*)strm_value_ptr(args[0], STRM_PTR_AUX);
}
