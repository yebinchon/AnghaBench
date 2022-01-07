
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;



__attribute__((used)) static inline int64
int64_min(int64 a, int64 b)
{
 if (a <= b)
  return a;
 return b;
}
