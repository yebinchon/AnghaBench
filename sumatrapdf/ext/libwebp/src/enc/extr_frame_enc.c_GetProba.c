
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int GetProba(int a, int b) {
  const int total = a + b;
  return (total == 0) ? 255
                      : (255 * a + total / 2) / total;
}
