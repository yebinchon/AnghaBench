
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ isdigit (char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static boolean_t
is_watchdog_dev(char *dev)
{

 if (strcmp(dev, "watchdog") == 0)
  return (B_TRUE);


 if (strstr(dev, "watchdog") == dev && isdigit(dev[8]))
  return (B_TRUE);

 return (B_FALSE);
}
