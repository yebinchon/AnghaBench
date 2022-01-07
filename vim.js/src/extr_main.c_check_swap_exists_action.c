
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SEA_QUIT ;
 int getout (int) ;
 int handle_swap_exists (int *) ;
 scalar_t__ swap_exists_action ;

__attribute__((used)) static void
check_swap_exists_action()
{
    if (swap_exists_action == SEA_QUIT)
 getout(1);
    handle_swap_exists(((void*)0));
}
