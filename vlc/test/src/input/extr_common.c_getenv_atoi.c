
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 char* getenv (char const*) ;

__attribute__((used)) static inline int getenv_atoi(const char *name)
{
    char *env = getenv(name);
    return env ? atoi(env) : 0;
}
