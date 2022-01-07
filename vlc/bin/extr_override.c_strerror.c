
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CALL (char* (*) (int),int) ;
 int LOG (char*,char*,int) ;
 scalar_t__ override ;

char *strerror (int val)
{
    if (override)
    {
        static const char msg[] =
            "Error message unavailable (use strerror_r instead of strerror)!";
        LOG("Blocked", "%d", val);
        return (char *)msg;
    }
    return CALL(strerror, val);
}
