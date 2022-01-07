
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double LONG ;
typedef double FLOAT ;



__attribute__((used)) static inline FLOAT twips_to_points(LONG value)
{
  return value * 72.0 / 1440;
}
