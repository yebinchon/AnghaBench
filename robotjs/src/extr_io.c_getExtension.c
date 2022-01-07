
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *getExtension(const char *fname, size_t len)
{
 if (fname == ((void*)0) || len <= 0) return ((void*)0);

 while (--len > 0 && fname[len] != '.' && fname[len] != '\0')
  ;

 return fname + len + 1;
}
