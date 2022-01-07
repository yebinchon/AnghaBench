
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int * sequence ;
 scalar_t__ sequence_count ;
 scalar_t__ sequence_size ;

__attribute__((used)) static void flush_sequence(void)
{
    HeapFree(GetProcessHeap(), 0, sequence);
    sequence = ((void*)0);
    sequence_count = sequence_size = 0;
}
