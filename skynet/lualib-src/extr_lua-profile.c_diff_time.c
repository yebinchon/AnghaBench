
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double get_time () ;

__attribute__((used)) static inline double
diff_time(double start) {
 double now = get_time();
 if (now < start) {
  return now + 0x10000 - start;
 } else {
  return now - start;
 }
}
