
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int caught_interrupt ;

__attribute__((used)) static void
catch_signal(int sig)
{
 caught_interrupt = sig;
}
