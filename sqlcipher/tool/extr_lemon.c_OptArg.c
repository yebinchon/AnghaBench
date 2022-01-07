
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argindex (int) ;
 char** argv ;

char *OptArg(int n)
{
  int i;
  i = argindex(n);
  return i>=0 ? argv[i] : 0;
}
