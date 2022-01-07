
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ sizeuv; } ;
typedef TYPE_1__ GCproto ;


 int lua_assert (int) ;
 int * proto_uvinfo (TYPE_1__*) ;

const char *lj_debug_uvname(GCproto *pt, uint32_t idx)
{
  const uint8_t *p = proto_uvinfo(pt);
  lua_assert(idx < pt->sizeuv);
  if (!p) return "";
  if (idx) while (*p++ || --idx) ;
  return (const char *)p;
}
