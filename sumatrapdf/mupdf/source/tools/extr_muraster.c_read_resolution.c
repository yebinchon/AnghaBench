
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* fz_atoi (char const*) ;
 char* strchr (char const*,char) ;
 void* x_resolution ;
 void* y_resolution ;

__attribute__((used)) static void
read_resolution(const char *arg)
{
 char *sep = strchr(arg, ',');

 if (sep == ((void*)0))
  sep = strchr(arg, 'x');
 if (sep == ((void*)0))
  sep = strchr(arg, ':');
 if (sep == ((void*)0))
  sep = strchr(arg, ';');

 x_resolution = fz_atoi(arg);
 if (sep && sep[1])
  y_resolution = fz_atoi(arg);
 else
  y_resolution = x_resolution;
}
