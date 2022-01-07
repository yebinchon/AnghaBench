
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hicon; int * folder; int * pidl; } ;
typedef TYPE_1__ Entry ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;

__attribute__((used)) static Entry* alloc_entry(void)
{
 Entry* entry = HeapAlloc(GetProcessHeap(), 0, sizeof(Entry));

 entry->pidl = ((void*)0);
 entry->folder = ((void*)0);
 entry->hicon = 0;

 return entry;
}
