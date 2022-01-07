
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float calc_percent(unsigned long current, unsigned long total) {
 float percent = 0.0;
 if (total <= 0)
  return percent;
 if (current >= total) {
  percent = 100.0f;
 } else {
  percent=(100.0f*(float)current/(float)total);
 }
 return percent;
}
