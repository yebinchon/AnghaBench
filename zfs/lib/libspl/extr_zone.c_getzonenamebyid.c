
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zoneid_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINVAL ;
 scalar_t__ GLOBAL_ZONEID ;
 int GLOBAL_ZONEID_NAME ;
 scalar_t__ strlen (int ) ;
 int strncpy (char*,int ,size_t) ;

ssize_t
getzonenamebyid(zoneid_t id, char *buf, size_t buflen)
{
 if (id != GLOBAL_ZONEID)
  return (EINVAL);

 ssize_t ret = strlen(GLOBAL_ZONEID_NAME) + 1;

 if (buf == ((void*)0) || buflen == 0)
  return (ret);

 strncpy(buf, GLOBAL_ZONEID_NAME, buflen);
 buf[buflen - 1] = '\0';

 return (ret);
}
