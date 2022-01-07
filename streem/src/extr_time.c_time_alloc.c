
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct strm_time {int utc_offset; struct timeval tv; int ns; int type; } ;
typedef int strm_value ;


 int STRM_NG ;
 int STRM_OK ;
 int STRM_PTR_AUX ;
 struct strm_time* malloc (int) ;
 int ns_time ;
 int strm_ptr_value (struct strm_time*) ;

__attribute__((used)) static int
time_alloc(struct timeval* tv, int utc_offset, strm_value* ret)
{
  struct strm_time* t = malloc(sizeof(struct strm_time));

  if (!t) return STRM_NG;
  t->type = STRM_PTR_AUX;
  t->ns = ns_time;
  t->tv = *tv;
  t->utc_offset = utc_offset;
  *ret = strm_ptr_value(t);
  return STRM_OK;
}
