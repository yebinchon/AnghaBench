
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TaskSchedulerImpl ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int InterlockedDecrement (int *) ;
 int TRACE (char*,int *) ;
 int dll_ref ;

__attribute__((used)) static void TaskSchedulerDestructor(TaskSchedulerImpl *This)
{
    TRACE("%p\n", This);
    HeapFree(GetProcessHeap(), 0, This);
    InterlockedDecrement(&dll_ref);
}
