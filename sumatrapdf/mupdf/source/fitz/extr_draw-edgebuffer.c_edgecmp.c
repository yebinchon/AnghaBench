
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int edgecmp(const void *a, const void *b)
{
 int left = ((int*)a)[0];
 int right = ((int*)b)[0];
 left -= right;
 if (left)
  return left;
 return ((int*)a)[1] - ((int*)b)[1];
}
