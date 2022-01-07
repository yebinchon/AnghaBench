
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle_table_entry {unsigned int iNextFree; int * pObject; } ;
struct handle_table {unsigned int iEntries; struct handle_table_entry* paEntries; } ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 struct handle_table_entry* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct handle_table_entry*) ;
 unsigned int TABLE_SIZE_INCREMENT ;
 int TRUE ;
 int memcpy (struct handle_table_entry*,struct handle_table_entry*,int) ;

__attribute__((used)) static BOOL grow_handle_table(struct handle_table *lpTable)
{
    struct handle_table_entry *newEntries;
    unsigned int i, newIEntries;

    newIEntries = lpTable->iEntries + TABLE_SIZE_INCREMENT;

    newEntries = HeapAlloc(GetProcessHeap(), 0, sizeof(struct handle_table_entry)*newIEntries);
    if (!newEntries)
        return FALSE;

    if (lpTable->paEntries)
    {
        memcpy(newEntries, lpTable->paEntries, sizeof(struct handle_table_entry)*lpTable->iEntries);
        HeapFree(GetProcessHeap(), 0, lpTable->paEntries);
    }

    for (i=lpTable->iEntries; i<newIEntries; i++)
    {
        newEntries[i].pObject = ((void*)0);
        newEntries[i].iNextFree = i+1;
    }

    lpTable->paEntries = newEntries;
    lpTable->iEntries = newIEntries;

    return TRUE;
}
