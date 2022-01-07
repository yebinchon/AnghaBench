
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {int ** def_val; } ;


 size_t VI_DEFAULT ;
 int findoption (int *) ;
 TYPE_1__* options ;

char_u *
get_highlight_default()
{
    int i;

    i = findoption((char_u *)"hl");
    if (i >= 0)
 return options[i].def_val[VI_DEFAULT];
    return (char_u *)((void*)0);
}
