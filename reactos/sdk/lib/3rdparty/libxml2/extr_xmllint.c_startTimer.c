
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int begin ;
 int clock () ;

__attribute__((used)) static void
startTimer(void)
{
    begin = clock();
}
