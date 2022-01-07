
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COVER_cmp (int ,void const*,void const*) ;
 int g_ctx ;

__attribute__((used)) static int COVER_strict_cmp(const void *lp, const void *rp) {
  int result = COVER_cmp(g_ctx, lp, rp);
  if (result == 0) {
    result = lp < rp ? -1 : 1;
  }
  return result;
}
