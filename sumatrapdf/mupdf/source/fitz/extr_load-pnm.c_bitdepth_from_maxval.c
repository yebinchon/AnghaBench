
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int bitdepth_from_maxval(int maxval)
{
 int depth = 0;
 while (maxval)
 {
  maxval >>= 1;
  depth++;
 }
 return depth;
}
