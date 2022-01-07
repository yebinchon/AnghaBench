
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_array {int dummy; } ;
typedef int strm_value ;


 scalar_t__ strm_value_vptr (int ) ;

struct strm_array*
strm_ary_struct(strm_value v)
{
  return (struct strm_array*)strm_value_vptr(v);
}
