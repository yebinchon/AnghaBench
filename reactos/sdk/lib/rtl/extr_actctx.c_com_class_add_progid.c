
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlstr_t ;
struct progids {int allocated; int num; int ** progids; } ;
struct TYPE_3__ {struct progids progids; } ;
struct TYPE_4__ {TYPE_1__ comclass; } ;
struct entity {TYPE_2__ u; } ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int ** RtlAllocateHeap (int ,int ,int) ;
 int RtlGetProcessHeap () ;
 int ** RtlReAllocateHeap (int ,int ,int **,int) ;
 int TRUE ;
 int * xmlstrdupW (int const*) ;

__attribute__((used)) static BOOL com_class_add_progid(const xmlstr_t *progid, struct entity *entity)
{
    struct progids *progids = &entity->u.comclass.progids;

    if (progids->allocated == 0)
    {
        progids->allocated = 4;
        if (!(progids->progids = RtlAllocateHeap(RtlGetProcessHeap(), 0, progids->allocated * sizeof(WCHAR*)))) return FALSE;
    }

    if (progids->allocated == progids->num)
    {
        WCHAR **new_progids = RtlReAllocateHeap(RtlGetProcessHeap(), 0, progids->progids,
                                                2 * progids->allocated * sizeof(WCHAR*));
        if (!new_progids) return FALSE;
        progids->allocated *= 2;
        progids->progids = new_progids;
    }

    if (!(progids->progids[progids->num] = xmlstrdupW(progid))) return FALSE;
    progids->num++;

    return TRUE;
}
