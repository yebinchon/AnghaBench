
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EBUSY ;
 int EEXIST ;
 int SET_ERROR (int) ;
 int zil_suspend (char const*,int *) ;

int
zil_reset(const char *osname, void *arg)
{
 int error;

 error = zil_suspend(osname, ((void*)0));

 if ((error == EACCES) || (error == EBUSY))
  return (SET_ERROR(error));
 if (error != 0)
  return (SET_ERROR(EEXIST));
 return (0);
}
