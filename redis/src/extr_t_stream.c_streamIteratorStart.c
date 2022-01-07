
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int rev; int * lp_ele; int * lp; TYPE_3__* stream; int ri; void** end_key; void** start_key; } ;
typedef TYPE_1__ streamIterator ;
struct TYPE_10__ {scalar_t__ seq; scalar_t__ ms; } ;
typedef TYPE_2__ streamID ;
struct TYPE_11__ {int rax; } ;
typedef TYPE_3__ stream ;


 void* UINT64_MAX ;
 scalar_t__ raxEOF (int *) ;
 int raxSeek (int *,char*,unsigned char*,int) ;
 int raxStart (int *,int ) ;
 int streamEncodeID (void**,TYPE_2__*) ;

void streamIteratorStart(streamIterator *si, stream *s, streamID *start, streamID *end, int rev) {


    if (start) {
        streamEncodeID(si->start_key,start);
    } else {
        si->start_key[0] = 0;
        si->start_key[1] = 0;
    }

    if (end) {
        streamEncodeID(si->end_key,end);
    } else {
        si->end_key[0] = UINT64_MAX;
        si->end_key[1] = UINT64_MAX;
    }


    raxStart(&si->ri,s->rax);
    if (!rev) {
        if (start && (start->ms || start->seq)) {
            raxSeek(&si->ri,"<=",(unsigned char*)si->start_key,
                    sizeof(si->start_key));
            if (raxEOF(&si->ri)) raxSeek(&si->ri,"^",((void*)0),0);
        } else {
            raxSeek(&si->ri,"^",((void*)0),0);
        }
    } else {
        if (end && (end->ms || end->seq)) {
            raxSeek(&si->ri,"<=",(unsigned char*)si->end_key,
                    sizeof(si->end_key));
            if (raxEOF(&si->ri)) raxSeek(&si->ri,"$",((void*)0),0);
        } else {
            raxSeek(&si->ri,"$",((void*)0),0);
        }
    }
    si->stream = s;
    si->lp = ((void*)0);
    si->lp_ele = ((void*)0);
    si->rev = rev;
}
