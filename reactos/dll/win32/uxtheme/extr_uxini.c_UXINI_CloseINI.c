
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PUXINI_FILE ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;

void UXINI_CloseINI(PUXINI_FILE uf)
{
    HeapFree(GetProcessHeap(), 0, uf);
}
