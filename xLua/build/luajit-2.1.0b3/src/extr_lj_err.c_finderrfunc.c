
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ptrdiff_t ;
struct TYPE_8__ {void* cframe; int stack; int * base; } ;
typedef TYPE_2__ lua_State ;
typedef int cTValue ;
struct TYPE_7__ {int ffid; } ;
struct TYPE_9__ {TYPE_1__ c; } ;


 int FF_xpcall ;
 int LJ_FR2 ;
 int cframe_canyield (void*) ;
 scalar_t__ cframe_errfunc (void*) ;
 int cframe_nres (void*) ;
 void* cframe_prev (void*) ;
 void* cframe_raw (void*) ;
 TYPE_5__* frame_func (int *) ;
 int frame_iscont_fficb (int *) ;
 int * frame_prevd (int *) ;
 int * frame_prevl (int *) ;
 int frame_typep (int *) ;
 int lua_assert (int ) ;
 int * restorestack (TYPE_2__*,int ) ;
 scalar_t__ savestack (TYPE_2__*,int ) ;
 int * tvref (int ) ;

__attribute__((used)) static ptrdiff_t finderrfunc(lua_State *L)
{
  cTValue *frame = L->base-1, *bot = tvref(L->stack)+LJ_FR2;
  void *cf = L->cframe;
  while (frame > bot && cf) {
    while (cframe_nres(cframe_raw(cf)) < 0) {
      if (frame >= restorestack(L, -cframe_nres(cf)))
 break;
      if (cframe_errfunc(cf) >= 0)
 return cframe_errfunc(cf);
      cf = cframe_prev(cf);
      if (cf == ((void*)0))
 return 0;
    }
    switch (frame_typep(frame)) {
    case 132:
    case 131:
      frame = frame_prevl(frame);
      break;
    case 135:
      cf = cframe_prev(cf);

    case 128:
      frame = frame_prevd(frame);
      break;
    case 134:
      if (frame_iscont_fficb(frame))
 cf = cframe_prev(cf);
      frame = frame_prevd(frame);
      break;
    case 133:
      if (cframe_canyield(cf)) return 0;
      if (cframe_errfunc(cf) >= 0)
 return cframe_errfunc(cf);
      frame = frame_prevd(frame);
      break;
    case 130:
    case 129:
      if (frame_func(frame_prevd(frame))->c.ffid == FF_xpcall)
 return savestack(L, frame_prevd(frame)+1);
      return 0;
    default:
      lua_assert(0);
      return 0;
    }
  }
  return 0;
}
