
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunk {int dummy; } ;
typedef void const* LPVOID ;
typedef int IUnknownVtbl ;
typedef int DWORD ;
typedef int BOOL ;


 int BLOCK_SIZE ;
 int FALSE ;
 int FIXME (char*,int) ;
 int MAX_BLOCKS ;
 int TRUE ;
 struct thunk* allocate_block (int) ;
 struct thunk** method_blocks ;

BOOL fill_stubless_table( IUnknownVtbl *vtbl, DWORD num )
{
    const void **entry = (const void **)(vtbl + 1);
    DWORD i, j;

    if (num - 3 > BLOCK_SIZE * MAX_BLOCKS)
    {
        FIXME( "%u methods not supported\n", num );
        return FALSE;
    }
    for (i = 0; i < (num - 3 + BLOCK_SIZE - 1) / BLOCK_SIZE; i++)
    {
        const struct thunk *block = method_blocks[i];
        if (!block && !(block = allocate_block( i ))) return FALSE;
        for (j = 0; j < BLOCK_SIZE && j < num - 3 - i * BLOCK_SIZE; j++, entry++)
            if (*entry == (LPVOID)-1) *entry = &block[j];
    }
    return TRUE;
}
