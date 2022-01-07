
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_time {scalar_t__ ns; } ;
typedef int strm_value ;


 int STRM_PTR_AUX ;
 scalar_t__ ns_time ;
 scalar_t__ strm_value_ptr (int ,int ) ;

__attribute__((used)) static struct strm_time*
get_time(strm_value val)
{
  struct strm_time* t = (struct strm_time*)strm_value_ptr(val, STRM_PTR_AUX);
  if (t->ns != ns_time) return ((void*)0);
  return t;
}
