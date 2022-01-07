
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int numline; size_t sizebc; } ;
typedef size_t MSize ;
typedef int LexState ;
typedef TYPE_1__ GCproto ;


 int bcread_block (int *,void*,size_t) ;
 scalar_t__ bcread_swap (int *) ;
 int lj_bswap (int ) ;
 scalar_t__ proto_lineinfo (TYPE_1__*) ;

__attribute__((used)) static void bcread_dbg(LexState *ls, GCproto *pt, MSize sizedbg)
{
  void *lineinfo = (void *)proto_lineinfo(pt);
  bcread_block(ls, lineinfo, sizedbg);

  if (bcread_swap(ls) && pt->numline >= 256) {
    MSize i, n = pt->sizebc-1;
    if (pt->numline < 65536) {
      uint16_t *p = (uint16_t *)lineinfo;
      for (i = 0; i < n; i++) p[i] = (uint16_t)((p[i] >> 8)|(p[i] << 8));
    } else {
      uint32_t *p = (uint32_t *)lineinfo;
      for (i = 0; i < n; i++) p[i] = lj_bswap(p[i]);
    }
  }
}
