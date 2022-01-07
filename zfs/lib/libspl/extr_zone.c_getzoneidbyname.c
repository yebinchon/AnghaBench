
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zoneid_t ;


 int EINVAL ;
 int GLOBAL_ZONEID ;
 int GLOBAL_ZONEID_NAME ;
 scalar_t__ strcmp (char const*,int ) ;

zoneid_t
getzoneidbyname(const char *name)
{
 if (name == ((void*)0))
  return (GLOBAL_ZONEID);

 if (strcmp(name, GLOBAL_ZONEID_NAME) == 0)
  return (GLOBAL_ZONEID);

 return (EINVAL);
}
