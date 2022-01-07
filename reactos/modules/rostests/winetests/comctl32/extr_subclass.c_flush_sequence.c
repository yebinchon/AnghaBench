
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int heap_free (int *) ;
 int * sequence ;
 scalar_t__ sequence_cnt ;
 scalar_t__ sequence_size ;

__attribute__((used)) static void flush_sequence(void)
{
    heap_free(sequence);
    sequence = ((void*)0);
    sequence_cnt = sequence_size = 0;
}
