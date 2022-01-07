
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_6__ {int nb_items; int self; } ;
typedef int LRESULT ;
typedef int * LPWSTR ;
typedef int const* LPCWSTR ;
typedef TYPE_1__ LB_DESCR ;
typedef int INT ;


 int GetProcessHeap () ;
 scalar_t__ HAS_STRINGS (TYPE_1__*) ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int LBN_ERRSPACE ;
 int LB_ERRSPACE ;
 int LISTBOX_InsertItem (TYPE_1__*,int,int *,scalar_t__) ;
 int SEND_NOTIFICATION (TYPE_1__*,int ) ;
 int TRACE (char*,int ,int,char*) ;
 char* debugstr_w (int *) ;
 int strcpyW (int *,int const*) ;
 int strlenW (int const*) ;

__attribute__((used)) static LRESULT LISTBOX_InsertString( LB_DESCR *descr, INT index, LPCWSTR str )
{
    LPWSTR new_str = ((void*)0);
    ULONG_PTR data = 0;
    LRESULT ret;

    if (HAS_STRINGS(descr))
    {
        static const WCHAR empty_stringW[] = { 0 };
        if (!str) str = empty_stringW;
        if (!(new_str = HeapAlloc( GetProcessHeap(), 0, (strlenW(str) + 1) * sizeof(WCHAR) )))
        {
            SEND_NOTIFICATION( descr, LBN_ERRSPACE );
            return LB_ERRSPACE;
        }
        strcpyW(new_str, str);
    }
    else data = (ULONG_PTR)str;

    if (index == -1) index = descr->nb_items;
    if ((ret = LISTBOX_InsertItem( descr, index, new_str, data )) != 0)
    {
        HeapFree( GetProcessHeap(), 0, new_str );
        return ret;
    }

    TRACE("[%p]: added item %d %s\n",
          descr->self, index, HAS_STRINGS(descr) ? debugstr_w(new_str) : "" );
    return index;
}
