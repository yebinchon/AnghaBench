
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 void* strm_value_vptr (int ) ;

__attribute__((used)) static void*
strm_ptr(strm_value v)
{
  return strm_value_vptr(v);
}
