
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* properties; scalar_t__ iPartId; scalar_t__ iStateId; } ;
struct TYPE_8__ {int iPrimitiveType; int iPropertyId; struct TYPE_8__* next; int origin; int dwValueLen; int lpValue; } ;
typedef int THEME_PROPERTY ;
typedef TYPE_1__* PTHEME_PROPERTY ;
typedef TYPE_2__* PTHEME_PARTSTATE ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 TYPE_1__* MSSTYLES_PSFindProperty (TYPE_2__*,int,int) ;
 int PO_CLASS ;
 int PO_GLOBAL ;
 int PO_PART ;
 int PO_STATE ;

__attribute__((used)) static PTHEME_PROPERTY MSSTYLES_AddProperty(PTHEME_PARTSTATE ps, int iPropertyPrimitive, int iPropertyId, LPCWSTR lpValue, DWORD dwValueLen, BOOL isGlobal)
{
    PTHEME_PROPERTY cur = MSSTYLES_PSFindProperty(ps, iPropertyPrimitive, iPropertyId);

    if(cur) return cur;

    cur = HeapAlloc(GetProcessHeap(), 0, sizeof(THEME_PROPERTY));
    cur->iPrimitiveType = iPropertyPrimitive;
    cur->iPropertyId = iPropertyId;
    cur->lpValue = lpValue;
    cur->dwValueLen = dwValueLen;

    if(ps->iStateId)
        cur->origin = PO_STATE;
    else if(ps->iPartId)
        cur->origin = PO_PART;
    else if(isGlobal)
        cur->origin = PO_GLOBAL;
    else
        cur->origin = PO_CLASS;

    cur->next = ps->properties;
    ps->properties = cur;
    return cur;
}
