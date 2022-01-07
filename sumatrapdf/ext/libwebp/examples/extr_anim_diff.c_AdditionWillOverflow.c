
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;

__attribute__((used)) static int AdditionWillOverflow(int a, int b) {
  return (b > 0) && (a > INT_MAX - b);
}
