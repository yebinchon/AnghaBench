
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ ME_Run ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ ME_IsWSpace (int ) ;
 scalar_t__ TRUE ;
 int * get_text (TYPE_1__ const*,int ) ;

__attribute__((used)) static BOOL run_is_splittable( const ME_Run *run )
{
    WCHAR *str = get_text( run, 0 ), *p;
    int i;
    BOOL found_ink = FALSE;

    for (i = 0, p = str; i < run->len; i++, p++)
    {
        if (ME_IsWSpace( *p ))
        {
            if (found_ink) return TRUE;
        }
        else
            found_ink = TRUE;
    }
    return FALSE;
}
