
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 scalar_t__ INT32_MAX ;
 scalar_t__ INT32_MIN ;

__attribute__((used)) static inline int
is_32bit(int64_t v) {
 return v >= INT32_MIN && v <= INT32_MAX;
}
