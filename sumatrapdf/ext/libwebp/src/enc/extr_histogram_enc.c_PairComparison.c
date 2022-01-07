
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int PairComparison(const void* idx1, const void* idx2) {

  return (*(int*) idx1 - *(int*) idx2);
}
