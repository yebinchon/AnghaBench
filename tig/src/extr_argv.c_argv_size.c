
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
argv_size(const char **argv)
{
 int argc = 0;

 while (argv && argv[argc])
  argc++;

 return argc;
}
