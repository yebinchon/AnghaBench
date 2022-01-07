
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_11__ {int metatable; int udtype; } ;
struct TYPE_10__ {int type; int * fp; } ;
typedef TYPE_2__ IOFileUD ;
typedef TYPE_3__ GCudata ;
typedef int GCobj ;
typedef int FILE ;


 int IOFILE_TYPE_STDF ;
 int UDTYPE_IO_FILE ;
 int gcV (scalar_t__) ;
 scalar_t__ lua_newuserdata (TYPE_1__*,int) ;
 int lua_setfield (TYPE_1__*,int,char const*) ;
 int * obj2gco (TYPE_3__*) ;
 int setgcref (int ,int ) ;
 TYPE_3__* udataV (scalar_t__) ;

__attribute__((used)) static GCobj *io_std_new(lua_State *L, FILE *fp, const char *name)
{
  IOFileUD *iof = (IOFileUD *)lua_newuserdata(L, sizeof(IOFileUD));
  GCudata *ud = udataV(L->top-1);
  ud->udtype = UDTYPE_IO_FILE;

  setgcref(ud->metatable, gcV(L->top-3));
  iof->fp = fp;
  iof->type = IOFILE_TYPE_STDF;
  lua_setfield(L, -2, name);
  return obj2gco(ud);
}
