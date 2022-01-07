
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * RPC_BINDING_HANDLE ;
typedef int * HSTRING_TABLE ;
typedef int BOOL ;


 int FALSE ;
 int * LocalBindingHandle ;
 int * LocalStringTable ;
 scalar_t__ PnpBindRpc (int *,int **) ;
 scalar_t__ RPC_S_OK ;
 int TRUE ;
 int pSetupStringTableAddString (int *,char*,int) ;
 int pSetupStringTableDestroy (int *) ;
 int * pSetupStringTableInitialize () ;

BOOL
PnpGetLocalHandles(RPC_BINDING_HANDLE *BindingHandle,
                   HSTRING_TABLE *StringTable)
{
    if (LocalBindingHandle != ((void*)0))
    {
        if (BindingHandle != ((void*)0))
            *BindingHandle = LocalBindingHandle;

        if (StringTable != ((void*)0))
            *StringTable = LocalStringTable;

        return TRUE;
    }

    LocalStringTable = pSetupStringTableInitialize();
    if (LocalStringTable == ((void*)0))
        return FALSE;

    if (PnpBindRpc(((void*)0), &LocalBindingHandle) != RPC_S_OK)
    {
        pSetupStringTableDestroy(LocalStringTable);
        return FALSE;
    }

    pSetupStringTableAddString(LocalStringTable, L"PLT", 1);

    if (BindingHandle != ((void*)0))
        *BindingHandle = LocalBindingHandle;

    if (StringTable != ((void*)0))
        *StringTable = LocalStringTable;

    return TRUE;
}
