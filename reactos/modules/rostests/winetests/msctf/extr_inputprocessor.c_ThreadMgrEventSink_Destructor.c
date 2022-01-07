
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ThreadMgrEventSink ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;

__attribute__((used)) static void ThreadMgrEventSink_Destructor(ThreadMgrEventSink *This)
{
    HeapFree(GetProcessHeap(),0,This);
}
