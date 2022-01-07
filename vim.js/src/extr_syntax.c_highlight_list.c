
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HLF_D ;
 int highlight_list_two (int,int ) ;
 int hl_attr (int ) ;

__attribute__((used)) static void
highlight_list()
{
    int i;

    for (i = 10; --i >= 0; )
 highlight_list_two(i, hl_attr(HLF_D));
    for (i = 40; --i >= 0; )
 highlight_list_two(99, 0);
}
