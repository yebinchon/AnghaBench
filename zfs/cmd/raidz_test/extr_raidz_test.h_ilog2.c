
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t ilog2(size_t a)
{
 return (a > 1 ? 1 + ilog2(a >> 1) : 0);
}
