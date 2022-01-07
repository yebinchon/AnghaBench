
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdline_info {int cmdlen; int cmdbuff; } ;
typedef int char_u ;


 struct cmdline_info* get_ccline_ptr () ;
 int * vim_strnsave (int ,int ) ;

char_u *
get_cmdline_str()
{
    struct cmdline_info *p = get_ccline_ptr();

    if (p == ((void*)0))
 return ((void*)0);
    return vim_strnsave(p->cmdbuff, p->cmdlen);
}
