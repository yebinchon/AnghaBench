
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ last_sourcing_lnum ;
 int * last_sourcing_name ;
 int vim_free (int *) ;

void
reset_last_sourcing()
{
    vim_free(last_sourcing_name);
    last_sourcing_name = ((void*)0);
    last_sourcing_lnum = 0;
}
