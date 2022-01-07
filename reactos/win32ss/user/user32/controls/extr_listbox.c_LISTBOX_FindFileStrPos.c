
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nb_items; int locale; TYPE_1__* items; } ;
struct TYPE_6__ {char* str; } ;
typedef char* LPCWSTR ;
typedef TYPE_2__ LB_DESCR ;
typedef int INT ;


 int FALSE ;
 int HAS_STRINGS (TYPE_2__*) ;
 int LISTBOX_FindStringPos (TYPE_2__*,char*,int ) ;
 int LISTBOX_lstrcmpiW (int ,char*,char*) ;

__attribute__((used)) static INT LISTBOX_FindFileStrPos( LB_DESCR *descr, LPCWSTR str )
{
    INT min, max, res;

    if (!HAS_STRINGS(descr))
        return LISTBOX_FindStringPos( descr, str, FALSE );
    min = 0;
    max = descr->nb_items;
    while (min != max)
    {
        INT index = (min + max) / 2;
        LPCWSTR p = descr->items[index].str;
        if (*p == '[')
        {
            if (*str != '[') res = -1;
            else if (p[1] == '-')
            {
                if (str[1] == '-') res = str[2] - p[2];
                else res = -1;
            }
            else
            {
                if (str[1] == '-') res = 1;
                else res = LISTBOX_lstrcmpiW( descr->locale, str, p );
            }
        }
        else
        {
            if (*str == '[') res = 1;
            else res = LISTBOX_lstrcmpiW( descr->locale, str, p );
        }
        if (!res) return index;
        if (res < 0) max = index;
        else min = index + 1;
    }
    return max;
}
