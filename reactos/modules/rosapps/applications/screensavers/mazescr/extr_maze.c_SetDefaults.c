
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int post_solve_delay ;
 int pre_solve_delay ;
 int size ;
 int solve_delay ;

__attribute__((used)) static void SetDefaults()
{
    size = 10;
    pre_solve_delay = 5000;
    post_solve_delay = 5000;
    solve_delay = 1;
}
