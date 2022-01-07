
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* metrics; } ;
struct TYPE_8__ {int iPrimitiveType; int iPropertyId; struct TYPE_8__* next; int origin; int dwValueLen; int lpValue; } ;
typedef int THEME_PROPERTY ;
typedef TYPE_1__* PTHEME_PROPERTY ;
typedef TYPE_2__* PTHEME_FILE ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 TYPE_1__* MSSTYLES_FindMetric (TYPE_2__*,int,int) ;
 int PO_GLOBAL ;

__attribute__((used)) static PTHEME_PROPERTY MSSTYLES_AddMetric(PTHEME_FILE tf, int iPropertyPrimitive, int iPropertyId, LPCWSTR lpValue, DWORD dwValueLen)
{
    PTHEME_PROPERTY cur = MSSTYLES_FindMetric(tf, iPropertyPrimitive, iPropertyId);

    if(cur) return cur;

    cur = HeapAlloc(GetProcessHeap(), 0, sizeof(THEME_PROPERTY));
    cur->iPrimitiveType = iPropertyPrimitive;
    cur->iPropertyId = iPropertyId;
    cur->lpValue = lpValue;
    cur->dwValueLen = dwValueLen;

    cur->origin = PO_GLOBAL;

    cur->next = tf->metrics;
    tf->metrics = cur;
    return cur;
}
