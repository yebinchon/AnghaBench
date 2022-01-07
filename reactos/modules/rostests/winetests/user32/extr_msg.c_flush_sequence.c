
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ sequence ;
 scalar_t__ sequence_cnt ;
 int sequence_cs ;
 scalar_t__ sequence_size ;

__attribute__((used)) static void flush_sequence(void)
{
    EnterCriticalSection( &sequence_cs );
    HeapFree(GetProcessHeap(), 0, sequence);
    sequence = 0;
    sequence_cnt = sequence_size = 0;
    LeaveCriticalSection( &sequence_cs );
}
