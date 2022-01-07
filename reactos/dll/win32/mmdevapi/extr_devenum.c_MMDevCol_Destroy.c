
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMDevColImpl ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;

__attribute__((used)) static void MMDevCol_Destroy(MMDevColImpl *This)
{
    HeapFree(GetProcessHeap(), 0, This);
}
