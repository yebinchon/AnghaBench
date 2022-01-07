
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int cTValue ;
struct TYPE_4__ {int firstline; } ;
typedef TYPE_1__ GCproto ;
typedef int GCfunc ;
typedef scalar_t__ BCLine ;


 int LUA_IDSIZE ;
 scalar_t__ debug_frameline (int *,int *,int *) ;
 int * frame_func (int *) ;
 TYPE_1__* funcproto (int *) ;
 scalar_t__ isluafunc (int *) ;
 int lj_debug_shortname (char*,int ,int ) ;
 int lj_strfmt_pushf (int *,char*,char const*,...) ;
 int proto_chunkname (TYPE_1__*) ;

void lj_debug_addloc(lua_State *L, const char *msg,
       cTValue *frame, cTValue *nextframe)
{
  if (frame) {
    GCfunc *fn = frame_func(frame);
    if (isluafunc(fn)) {
      BCLine line = debug_frameline(L, fn, nextframe);
      if (line >= 0) {
 GCproto *pt = funcproto(fn);
 char buf[LUA_IDSIZE];
 lj_debug_shortname(buf, proto_chunkname(pt), pt->firstline);
 lj_strfmt_pushf(L, "%s:%d: %s", buf, line, msg);
 return;
      }
    }
  }
  lj_strfmt_pushf(L, "%s", msg);
}
