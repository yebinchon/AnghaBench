
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int monotonic_mock ;

__attribute__((used)) static bool
nstime_monotonic_mock(void) {
 return monotonic_mock;
}
