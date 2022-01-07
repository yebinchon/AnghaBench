
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;

__attribute__((used)) static const char *getuser(void)
{
 const char *u;
 u = getenv("USER");
 if (!u) u = getenv("USERNAME");
 if (!u) u = "user";
 return u;
}
