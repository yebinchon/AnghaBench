
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* text; } ;


 TYPE_1__* choices ;
 int install_openwith ;

__attribute__((used)) static void
change_openwith_choice(int idx)
{
    if (install_openwith == 0)
    {
 choices[idx].text = "Add Vim to the \"Open With...\" list in the popup menu for the right\n    mouse button so that you can edit any file with Vim";
 install_openwith = 1;
    }
    else
    {
 choices[idx].text = "Do NOT add Vim to the \"Open With...\" list in the popup menu for the\n    right mouse button to edit any file with Vim";
 install_openwith = 0;
    }
}
