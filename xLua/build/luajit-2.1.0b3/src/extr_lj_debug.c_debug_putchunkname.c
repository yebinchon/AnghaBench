
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int firstline; } ;
struct TYPE_8__ {int len; } ;
typedef int SBuf ;
typedef int MSize ;
typedef TYPE_1__ GCstr ;
typedef TYPE_2__ GCproto ;
typedef int BCLine ;


 int lj_buf_putb (int *,char) ;
 int lj_buf_putmem (int *,char const*,int) ;
 int lj_buf_putstr (int *,TYPE_1__*) ;
 TYPE_1__* proto_chunkname (TYPE_2__*) ;
 char* strdata (TYPE_1__*) ;

__attribute__((used)) static int debug_putchunkname(SBuf *sb, GCproto *pt, int pathstrip)
{
  GCstr *name = proto_chunkname(pt);
  const char *p = strdata(name);
  if (pt->firstline == ~(BCLine)0) {
    lj_buf_putmem(sb, "[builtin:", 9);
    lj_buf_putstr(sb, name);
    lj_buf_putb(sb, ']');
    return 0;
  }
  if (*p == '=' || *p == '@') {
    MSize len = name->len-1;
    p++;
    if (pathstrip) {
      int i;
      for (i = len-1; i >= 0; i--)
 if (p[i] == '/' || p[i] == '\\') {
   len -= i+1;
   p = p+i+1;
   break;
 }
    }
    lj_buf_putmem(sb, p, len);
  } else {
    lj_buf_putmem(sb, "[string]", 8);
  }
  return 1;
}
