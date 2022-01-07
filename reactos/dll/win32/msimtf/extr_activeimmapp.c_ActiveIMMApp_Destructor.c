
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ActiveIMMApp ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*) ;

__attribute__((used)) static void ActiveIMMApp_Destructor(ActiveIMMApp* This)
{
    TRACE("\n");
    HeapFree(GetProcessHeap(),0,This);
}
