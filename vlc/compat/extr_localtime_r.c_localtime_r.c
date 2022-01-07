
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct tm const tm ;
typedef struct tm time_t ;


 struct tm const* errno ;
 struct tm const* gmtime_r (struct tm const*,struct tm const*) ;
 struct tm const* localtime_s (struct tm const*,struct tm const*) ;

struct tm *localtime_r (const time_t *timep, struct tm *result)
{






    return gmtime_r(timep, result);

}
