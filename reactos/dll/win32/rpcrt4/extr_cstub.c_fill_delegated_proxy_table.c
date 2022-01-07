
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vtbl_method_t ;
struct TYPE_3__ {int Release; int AddRef; int QueryInterface; } ;
typedef TYPE_1__ IUnknownVtbl ;
typedef int DWORD ;
typedef int BOOL ;


 int BLOCK_SIZE ;
 int FALSE ;
 int FIXME (char*,int) ;
 int IUnknown_AddRef_Proxy ;
 int IUnknown_QueryInterface_Proxy ;
 int IUnknown_Release_Proxy ;
 int MAX_BLOCKS ;
 int TRUE ;
 int * allocate_block (int) ;
 int ** method_blocks ;

BOOL fill_delegated_proxy_table(IUnknownVtbl *vtbl, DWORD num)
{
    const void **entry = (const void **)(vtbl + 1);
    DWORD i, j;

    if (num - 3 > BLOCK_SIZE * MAX_BLOCKS)
    {
        FIXME( "%u methods not supported\n", num );
        return FALSE;
    }
    vtbl->QueryInterface = IUnknown_QueryInterface_Proxy;
    vtbl->AddRef = IUnknown_AddRef_Proxy;
    vtbl->Release = IUnknown_Release_Proxy;
    for (i = 0; i < (num - 3 + BLOCK_SIZE - 1) / BLOCK_SIZE; i++)
    {
        const vtbl_method_t *block = method_blocks[i];
        if (!block && !(block = allocate_block( i ))) return FALSE;
        for (j = 0; j < BLOCK_SIZE && j < num - 3 - i * BLOCK_SIZE; j++, entry++)
            if (!*entry) *entry = &block[j];
    }
    return TRUE;
}
