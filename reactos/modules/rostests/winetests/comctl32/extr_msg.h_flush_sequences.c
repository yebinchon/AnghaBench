
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_sequence {int dummy; } ;


 int flush_sequence (struct msg_sequence**,int) ;

__attribute__((used)) static inline void flush_sequences(struct msg_sequence **seq, int n)
{
    int i;

    for (i = 0; i < n; i++)
        flush_sequence(seq, i);
}
