
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ms; scalar_t__ seq; } ;
typedef TYPE_1__ streamID ;



int streamCompareID(streamID *a, streamID *b) {
    if (a->ms > b->ms) return 1;
    else if (a->ms < b->ms) return -1;

    else if (a->seq > b->seq) return 1;
    else if (a->seq < b->seq) return -1;

    return 0;
}
