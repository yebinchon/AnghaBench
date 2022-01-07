
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc4_info ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;

void SECUR32_arc4Cleanup(arc4_info *a4i)
{
    HeapFree(GetProcessHeap(), 0, a4i);
}
