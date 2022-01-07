
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_11__ {int env; } ;
struct TYPE_15__ {TYPE_1__ c; } ;
struct TYPE_14__ {int metatable; int udtype; } ;
struct TYPE_13__ {int type; int * fp; } ;
typedef TYPE_3__ IOFileUD ;
typedef TYPE_4__ GCudata ;


 int IOFILE_TYPE_FILE ;
 int UDTYPE_IO_FILE ;
 TYPE_9__* curr_func (TYPE_2__*) ;
 scalar_t__ lua_newuserdata (TYPE_2__*,int) ;
 int setgcrefr (int ,int ) ;
 TYPE_4__* udataV (scalar_t__) ;

__attribute__((used)) static IOFileUD *io_file_new(lua_State *L)
{
  IOFileUD *iof = (IOFileUD *)lua_newuserdata(L, sizeof(IOFileUD));
  GCudata *ud = udataV(L->top-1);
  ud->udtype = UDTYPE_IO_FILE;

  setgcrefr(ud->metatable, curr_func(L)->c.env);
  iof->fp = ((void*)0);
  iof->type = IOFILE_TYPE_FILE;
  return iof;
}
