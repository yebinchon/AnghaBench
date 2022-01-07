
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nstime_t ;


 scalar_t__ monotonic_mock ;
 int nstime_copy (int *,int *) ;
 int nupdates_mock ;
 int time_mock ;

__attribute__((used)) static bool
nstime_update_mock(nstime_t *time) {
 nupdates_mock++;
 if (monotonic_mock) {
  nstime_copy(time, &time_mock);
 }
 return !monotonic_mock;
}
