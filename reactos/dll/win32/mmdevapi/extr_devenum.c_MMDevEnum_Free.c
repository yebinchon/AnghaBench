
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int * MMDevEnumerator ;
 int MMDevice_Destroy (int ) ;
 scalar_t__ MMDevice_count ;
 int * MMDevice_head ;
 int RegCloseKey (int *) ;
 int * key_capture ;
 int * key_render ;

void MMDevEnum_Free(void)
{
    while (MMDevice_count)
        MMDevice_Destroy(MMDevice_head[0]);
    RegCloseKey(key_render);
    RegCloseKey(key_capture);
    key_render = key_capture = ((void*)0);
    HeapFree(GetProcessHeap(), 0, MMDevEnumerator);
    MMDevEnumerator = ((void*)0);
}
