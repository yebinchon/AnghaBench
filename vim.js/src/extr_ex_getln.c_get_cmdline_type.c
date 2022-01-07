
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdline_info {int cmdfirstc; scalar_t__ input_fn; } ;


 int NUL ;
 struct cmdline_info* get_ccline_ptr () ;

int
get_cmdline_type()
{
    struct cmdline_info *p = get_ccline_ptr();

    if (p == ((void*)0))
 return NUL;
    if (p->cmdfirstc == NUL)
 return (p->input_fn) ? '@' : '-';
    return p->cmdfirstc;
}
