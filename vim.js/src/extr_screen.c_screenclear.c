
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int check_for_delay (int ) ;
 int screenalloc (int ) ;
 int screenclear2 () ;

void
screenclear()
{
    check_for_delay(FALSE);
    screenalloc(FALSE);
    screenclear2();
}
