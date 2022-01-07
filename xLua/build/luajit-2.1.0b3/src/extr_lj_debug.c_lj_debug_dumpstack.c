
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lua_State ;
typedef int cTValue ;
struct TYPE_11__ {int f; int ffid; } ;
struct TYPE_13__ {TYPE_1__ c; } ;
struct TYPE_12__ {int firstline; } ;
typedef int SBuf ;
typedef int MSize ;
typedef TYPE_2__ GCproto ;
typedef TYPE_3__ GCfunc ;
typedef int BCLine ;


 int debug_frameline (int *,TYPE_3__*,int *) ;
 int debug_putchunkname (int *,TYPE_2__*,int) ;
 TYPE_3__* frame_func (int *) ;
 TYPE_2__* funcproto (TYPE_3__*) ;
 int isffunc (TYPE_3__*) ;
 int isluafunc (TYPE_3__*) ;
 int lj_buf_putb (int *,int) ;
 int lj_buf_putmem (int *,char const*,int) ;
 int * lj_debug_frame (int *,int,int*) ;
 char* lj_debug_funcname (int *,int *,char const**) ;
 int lj_strfmt_putint (int *,int ) ;
 int lj_strfmt_putptr (int *,int ) ;
 int sbufB (int *) ;
 int sbuflen (int *) ;
 int setsbufP (int *,int) ;
 int strlen (char const*) ;

void lj_debug_dumpstack(lua_State *L, SBuf *sb, const char *fmt, int depth)
{
  int level = 0, dir = 1, pathstrip = 1;
  MSize lastlen = 0;
  if (depth < 0) { level = ~depth; depth = dir = -1; }
  while (level != depth) {
    int size;
    cTValue *frame = lj_debug_frame(L, level, &size);
    if (frame) {
      cTValue *nextframe = size ? frame+size : ((void*)0);
      GCfunc *fn = frame_func(frame);
      const uint8_t *p = (const uint8_t *)fmt;
      int c;
      while ((c = *p++)) {
 switch (c) {
 case 'p':
   pathstrip = 0;
   break;
 case 'F': case 'f': {
   const char *name;
   const char *what = lj_debug_funcname(L, frame, &name);
   if (what) {
     if (c == 'F' && isluafunc(fn)) {
       GCproto *pt = funcproto(fn);
       if (pt->firstline != ~(BCLine)0) {
  debug_putchunkname(sb, pt, pathstrip);
  lj_buf_putb(sb, ':');
       }
     }
     lj_buf_putmem(sb, name, (MSize)strlen(name));
     break;
   }
   }

 case 'l':
   if (isluafunc(fn)) {
     GCproto *pt = funcproto(fn);
     if (debug_putchunkname(sb, pt, pathstrip)) {

       BCLine line = c == 'l' ? debug_frameline(L, fn, nextframe) :
           pt->firstline;
       lj_buf_putb(sb, ':');
       lj_strfmt_putint(sb, line >= 0 ? line : pt->firstline);
     }
   } else if (isffunc(fn)) {
     lj_buf_putmem(sb, "[builtin#", 9);
     lj_strfmt_putint(sb, fn->c.ffid);
     lj_buf_putb(sb, ']');
   } else {
     lj_buf_putb(sb, '@');
     lj_strfmt_putptr(sb, fn->c.f);
   }
   break;
 case 'Z':
   lastlen = sbuflen(sb);
   break;
 default:
   lj_buf_putb(sb, c);
   break;
 }
      }
    } else if (dir == 1) {
      break;
    } else {
      level -= size;
    }
    level += dir;
  }
  if (lastlen)
    setsbufP(sb, sbufB(sb) + lastlen);
}
