
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t max_cons; struct TYPE_6__* connections; int * pAdvSink; } ;
typedef TYPE_1__ OleAdviseHolderImpl ;
typedef size_t DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int TRACE (char*,TYPE_1__*) ;
 int release_statdata (TYPE_1__*) ;

__attribute__((used)) static void OleAdviseHolderImpl_Destructor(OleAdviseHolderImpl *This)
{
    DWORD index;
    TRACE("%p\n", This);

    for (index = 0; index < This->max_cons; index++)
    {
        if (This->connections[index].pAdvSink != ((void*)0))
            release_statdata(This->connections + index);
    }

    HeapFree(GetProcessHeap(), 0, This->connections);
    HeapFree(GetProcessHeap(), 0, This);
}
