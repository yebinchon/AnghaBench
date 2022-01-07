
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int fz_atoi (char const*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
read_rotation(const char *arg)
{
 int i;

 if (strcmp(arg, "auto"))
 {
  return -1;
 }

 i = fz_atoi(arg);

 i = i % 360;
 if (i % 90 != 0)
 {
  fprintf(stderr, "Ignoring invalid rotation\n");
  i = 0;
 }

 return i;
}
