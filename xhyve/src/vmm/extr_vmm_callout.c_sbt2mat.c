
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ sbintime_t ;


 int nanos_to_abs (int) ;

__attribute__((used)) static inline uint64_t sbt2mat(sbintime_t sbt) {
  uint64_t s, ns;

  s = (((uint64_t) sbt) >> 32);
  ns = (((uint64_t) 1000000000) * (uint32_t) sbt) >> 32;

  return (nanos_to_abs((s * 1000000000) + ns));
}
