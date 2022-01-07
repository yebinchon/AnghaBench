
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t length; int rax; } ;
typedef TYPE_1__ stream ;
struct TYPE_9__ {unsigned char* data; int key_len; int * key; } ;
typedef TYPE_2__ raxIterator ;
typedef size_t int64_t ;


 int STREAM_ITEM_FLAG_DELETED ;
 int STREAM_ITEM_FLAG_SAMEFIELDS ;
 unsigned char* lpFirst (unsigned char*) ;
 int lpFree (unsigned char*) ;
 void* lpGetInteger (unsigned char*) ;
 unsigned char* lpNext (unsigned char*,unsigned char*) ;
 unsigned char* lpReplaceInteger (unsigned char*,unsigned char**,int) ;
 int raxInsert (int ,int *,int ,unsigned char*,int *) ;
 scalar_t__ raxNext (TYPE_2__*) ;
 int raxRemove (int ,int *,int ,int *) ;
 int raxSeek (TYPE_2__*,char*,int *,int ) ;
 int raxStart (TYPE_2__*,int ) ;
 int raxStop (TYPE_2__*) ;
 int serverAssert (int) ;

int64_t streamTrimByLength(stream *s, size_t maxlen, int approx) {
    if (s->length <= maxlen) return 0;

    raxIterator ri;
    raxStart(&ri,s->rax);
    raxSeek(&ri,"^",((void*)0),0);

    int64_t deleted = 0;
    while(s->length > maxlen && raxNext(&ri)) {
        unsigned char *lp = ri.data, *p = lpFirst(lp);
        int64_t entries = lpGetInteger(p);



        if (s->length - entries >= maxlen) {
            lpFree(lp);
            raxRemove(s->rax,ri.key,ri.key_len,((void*)0));
            raxSeek(&ri,">=",ri.key,ri.key_len);
            s->length -= entries;
            deleted += entries;
            continue;
        }



        if (approx) break;



        int64_t to_delete = s->length - maxlen;
        serverAssert(to_delete < entries);
        lp = lpReplaceInteger(lp,&p,entries-to_delete);
        p = lpNext(lp,p);
        int64_t marked_deleted = lpGetInteger(p);
        lp = lpReplaceInteger(lp,&p,marked_deleted+to_delete);
        p = lpNext(lp,p);


        int64_t master_fields_count = lpGetInteger(p);
        p = lpNext(lp,p);
        for (int64_t j = 0; j < master_fields_count; j++)
            p = lpNext(lp,p);
        p = lpNext(lp,p);




        while(p) {
            int flags = lpGetInteger(p);
            int to_skip;


            if (!(flags & STREAM_ITEM_FLAG_DELETED)) {
                flags |= STREAM_ITEM_FLAG_DELETED;
                lp = lpReplaceInteger(lp,&p,flags);
                deleted++;
                s->length--;
                if (s->length <= maxlen) break;
            }

            p = lpNext(lp,p);
            p = lpNext(lp,p);
            p = lpNext(lp,p);
            if (flags & STREAM_ITEM_FLAG_SAMEFIELDS) {
                to_skip = master_fields_count;
            } else {
                to_skip = lpGetInteger(p);
                to_skip = 1+(to_skip*2);
            }

            while(to_skip--) p = lpNext(lp,p);
            p = lpNext(lp,p);
        }



        entries -= to_delete;
        marked_deleted += to_delete;
        if (entries + marked_deleted > 10 && marked_deleted > entries/2) {

        }


        raxInsert(s->rax,ri.key,ri.key_len,lp,((void*)0));

        break;

    }

    raxStop(&ri);
    return deleted;
}
