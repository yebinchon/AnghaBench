
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdline_info {int * cmdbuff; } ;


 int CMDLINE ;
 int State ;
 struct cmdline_info ccline ;
 struct cmdline_info prev_ccline ;
 scalar_t__ prev_ccline_used ;

__attribute__((used)) static struct cmdline_info *
get_ccline_ptr()
{
    if ((State & CMDLINE) == 0)
 return ((void*)0);
    if (ccline.cmdbuff != ((void*)0))
 return &ccline;
    if (prev_ccline_used && prev_ccline.cmdbuff != ((void*)0))
 return &prev_ccline;
    return ((void*)0);
}
