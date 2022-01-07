
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ base; scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_15__ {int nupvalues; int * upvalue; } ;
struct TYPE_18__ {TYPE_1__ c; } ;
struct TYPE_17__ {int type; int * fp; } ;
typedef int TValue ;
typedef int MSize ;
typedef TYPE_3__ IOFileUD ;
typedef TYPE_4__ GCfunc ;


 int IOFILE_FLAG_CLOSE ;
 int LJ_ERR_IOCLFL ;
 int LJ_ERR_STKOV ;
 int LUAI_MAXCSTACK ;
 TYPE_4__* curr_func (TYPE_2__*) ;
 scalar_t__ ferror (int *) ;
 int io_file_close (TYPE_2__*,TYPE_3__*) ;
 int io_file_read (TYPE_2__*,int *,int ) ;
 int lj_err_caller (TYPE_2__*,int ) ;
 int lj_err_callermsg (TYPE_2__*,int ) ;
 int lj_state_checkstack (TYPE_2__*,int ) ;
 int memcpy (scalar_t__,int *,int) ;
 int strVdata (scalar_t__) ;
 scalar_t__ tvisnil (scalar_t__) ;
 int udataV (int *) ;
 TYPE_3__* uddata (int ) ;

__attribute__((used)) static int io_file_iter(lua_State *L)
{
  GCfunc *fn = curr_func(L);
  IOFileUD *iof = uddata(udataV(&fn->c.upvalue[0]));
  int n = fn->c.nupvalues - 1;
  if (iof->fp == ((void*)0))
    lj_err_caller(L, LJ_ERR_IOCLFL);
  L->top = L->base;
  if (n) {
    if (n > LUAI_MAXCSTACK)
      lj_err_caller(L, LJ_ERR_STKOV);
    lj_state_checkstack(L, (MSize)n);
    memcpy(L->top, &fn->c.upvalue[1], n*sizeof(TValue));
    L->top += n;
  }
  n = io_file_read(L, iof->fp, 0);
  if (ferror(iof->fp))
    lj_err_callermsg(L, strVdata(L->top-2));
  if (tvisnil(L->base) && (iof->type & IOFILE_FLAG_CLOSE)) {
    io_file_close(L, iof);
    return 0;
  }
  return n;
}
