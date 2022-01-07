
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc4_info ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;

arc4_info *SECUR32_arc4Alloc(void)
{
    arc4_info *a4i = HeapAlloc(GetProcessHeap(), 0, sizeof(arc4_info));
    return a4i;
}
