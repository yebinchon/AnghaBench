
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* sighandler_t ) (int) ;


 int stub1 (int) ;

__attribute__((used)) static void
sigcall(int sig, void* f)
{
  (*(sighandler_t)f)(sig);
}
