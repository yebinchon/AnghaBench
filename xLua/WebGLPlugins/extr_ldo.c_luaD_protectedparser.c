
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ size; int * arr; } ;
struct TYPE_13__ {scalar_t__ size; int * arr; } ;
struct TYPE_12__ {scalar_t__ size; int * arr; } ;
struct TYPE_15__ {TYPE_3__ label; TYPE_2__ gt; TYPE_1__ actvar; } ;
struct SParser {char const* name; char const* mode; TYPE_4__ dyd; int buff; int * z; } ;
struct TYPE_16__ {int nny; int errfunc; int top; } ;
typedef TYPE_5__ lua_State ;
typedef int ZIO ;


 int f_parser ;
 int luaD_pcall (TYPE_5__*,int ,struct SParser*,int ,int ) ;
 int luaM_freearray (TYPE_5__*,int *,scalar_t__) ;
 int luaZ_freebuffer (TYPE_5__*,int *) ;
 int luaZ_initbuffer (TYPE_5__*,int *) ;
 int savestack (TYPE_5__*,int ) ;

int luaD_protectedparser (lua_State *L, ZIO *z, const char *name,
                                        const char *mode) {
  struct SParser p;
  int status;
  L->nny++;
  p.z = z; p.name = name; p.mode = mode;
  p.dyd.actvar.arr = ((void*)0); p.dyd.actvar.size = 0;
  p.dyd.gt.arr = ((void*)0); p.dyd.gt.size = 0;
  p.dyd.label.arr = ((void*)0); p.dyd.label.size = 0;
  luaZ_initbuffer(L, &p.buff);
  status = luaD_pcall(L, f_parser, &p, savestack(L, L->top), L->errfunc);
  luaZ_freebuffer(L, &p.buff);
  luaM_freearray(L, p.dyd.actvar.arr, p.dyd.actvar.size);
  luaM_freearray(L, p.dyd.gt.arr, p.dyd.gt.size);
  luaM_freearray(L, p.dyd.label.arr, p.dyd.label.size);
  L->nny--;
  return status;
}
