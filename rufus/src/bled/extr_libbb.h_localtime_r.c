
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 scalar_t__ localtime_s (struct tm*,int const*) ;

__attribute__((used)) static inline struct tm *localtime_r(const time_t *timep, struct tm *result) {
 if (localtime_s(result, timep) != 0)
  result = ((void*)0);
 return result;
}
