
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int capacity; int * seq; int member_3; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ rawSeqStore_t ;
typedef int rawSeq ;
struct TYPE_6__ {int capacity; scalar_t__ start; } ;
typedef TYPE_2__ buffer_t ;



__attribute__((used)) static rawSeqStore_t bufferToSeq(buffer_t buffer)
{
    rawSeqStore_t seq = {((void*)0), 0, 0, 0};
    seq.seq = (rawSeq*)buffer.start;
    seq.capacity = buffer.capacity / sizeof(rawSeq);
    return seq;
}
