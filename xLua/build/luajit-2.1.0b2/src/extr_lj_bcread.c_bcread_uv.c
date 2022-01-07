
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int MSize ;
typedef int LexState ;
typedef int GCproto ;


 int bcread_block (int *,int*,int) ;
 scalar_t__ bcread_swap (int *) ;
 int* proto_uv (int *) ;

__attribute__((used)) static void bcread_uv(LexState *ls, GCproto *pt, MSize sizeuv)
{
  if (sizeuv) {
    uint16_t *uv = proto_uv(pt);
    bcread_block(ls, uv, sizeuv*2);

    if (bcread_swap(ls)) {
      MSize i;
      for (i = 0; i < sizeuv; i++)
 uv[i] = (uint16_t)((uv[i] >> 8)|(uv[i] << 8));
    }
  }
}
