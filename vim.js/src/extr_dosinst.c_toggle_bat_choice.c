
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t arg; } ;
struct TYPE_3__ {char* batpath; char* oldbat; } ;


 char NUL ;
 int alloc_text (int,char*,char*) ;
 TYPE_2__* choices ;
 int strcpy (char*,char*) ;
 TYPE_1__* targets ;

__attribute__((used)) static void
toggle_bat_choice(int idx)
{
    char *batname = targets[choices[idx].arg].batpath;
    char *oldname = targets[choices[idx].arg].oldbat;

    if (*batname == NUL)
    {
 alloc_text(idx, "    Overwrite %s", oldname);
 strcpy(batname, oldname);
    }
    else
    {
 alloc_text(idx, "    Do NOT overwrite %s", oldname);
 *batname = NUL;
    }
}
