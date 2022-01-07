
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int key_len; int key; } ;
struct TYPE_8__ {unsigned char* lp; unsigned char* lp_flags; scalar_t__ rev; TYPE_5__* stream; int end_key; int start_key; TYPE_1__ ri; } ;
typedef TYPE_2__ streamIterator ;
typedef int streamID ;
typedef int int64_t ;
struct TYPE_9__ {int length; int rax; } ;


 int STREAM_ITEM_FLAG_DELETED ;
 unsigned char* lpFirst (unsigned char*) ;
 int lpFree (unsigned char*) ;
 int lpGetInteger (unsigned char*) ;
 unsigned char* lpNext (unsigned char*,unsigned char*) ;
 unsigned char* lpReplaceInteger (unsigned char*,unsigned char**,int) ;
 int raxInsert (int ,int ,int ,unsigned char*,int *) ;
 int raxRemove (int ,int ,int ,int *) ;
 int streamDecodeID (int ,int *) ;
 int streamIteratorStart (TYPE_2__*,TYPE_5__*,int *,int *,scalar_t__) ;
 int streamIteratorStop (TYPE_2__*) ;

void streamIteratorRemoveEntry(streamIterator *si, streamID *current) {
    unsigned char *lp = si->lp;
    int64_t aux;






    int flags = lpGetInteger(si->lp_flags);
    flags |= STREAM_ITEM_FLAG_DELETED;
    lp = lpReplaceInteger(lp,&si->lp_flags,flags);


    unsigned char *p = lpFirst(lp);
    aux = lpGetInteger(p);

    if (aux == 1) {


        lpFree(lp);
        raxRemove(si->stream->rax,si->ri.key,si->ri.key_len,((void*)0));
    } else {

        lp = lpReplaceInteger(lp,&p,aux-1);
        p = lpNext(lp,p);
        aux = lpGetInteger(p);
        lp = lpReplaceInteger(lp,&p,aux+1);


        if (si->lp != lp)
            raxInsert(si->stream->rax,si->ri.key,si->ri.key_len,lp,((void*)0));
    }


    si->stream->length--;


    streamID start, end;
    if (si->rev) {
        streamDecodeID(si->start_key,&start);
        end = *current;
    } else {
        start = *current;
        streamDecodeID(si->end_key,&end);
    }
    streamIteratorStop(si);
    streamIteratorStart(si,si->stream,&start,&end,si->rev);



}
