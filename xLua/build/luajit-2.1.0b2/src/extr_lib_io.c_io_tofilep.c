
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ base; scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_7__ {scalar_t__ udtype; } ;
typedef int IOFileUD ;


 scalar_t__ UDTYPE_IO_FILE ;
 int lj_err_argtype (TYPE_1__*,int,char*) ;
 scalar_t__ tvisudata (scalar_t__) ;
 TYPE_2__* udataV (scalar_t__) ;
 scalar_t__ uddata (TYPE_2__*) ;

__attribute__((used)) static IOFileUD *io_tofilep(lua_State *L)
{
  if (!(L->base < L->top && tvisudata(L->base) &&
 udataV(L->base)->udtype == UDTYPE_IO_FILE))
    lj_err_argtype(L, 1, "FILE*");
  return (IOFileUD *)uddata(udataV(L->base));
}
