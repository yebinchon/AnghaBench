
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;

__attribute__((used)) static void
sigupdate(int sig, void* arg)
{
  int* var = (int*)arg;
  *var = TRUE;
}
