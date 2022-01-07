
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static void
zap_ptrtbl_transfer(const uint64_t *src, uint64_t *dst, int n)
{
 for (int i = 0; i < n; i++) {
  uint64_t lb = src[i];
  dst[2 * i + 0] = lb;
  dst[2 * i + 1] = lb;
 }
}
