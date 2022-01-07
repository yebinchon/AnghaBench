
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_sequence {int dummy; } ;


 struct msg_sequence* heap_alloc_zero (int) ;

__attribute__((used)) static void init_msg_sequences(struct msg_sequence **seq, int n)
{
    int i;

    for (i = 0; i < n; i++)
        seq[i] = heap_alloc_zero(sizeof(struct msg_sequence));
}
