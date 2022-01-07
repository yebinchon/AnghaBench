
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;

void RPCRT4_strfree(LPSTR src)
{
  HeapFree(GetProcessHeap(), 0, src);
}
