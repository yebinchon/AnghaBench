
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int IsNotCompatible(int feature, int num_items) {
  return (feature != 0) != (num_items > 0);
}
