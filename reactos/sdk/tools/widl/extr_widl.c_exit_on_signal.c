
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;

__attribute__((used)) static void exit_on_signal( int sig )
{
    exit(1);
}
