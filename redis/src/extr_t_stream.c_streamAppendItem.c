
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;


typedef int uint64_t ;
struct TYPE_21__ {scalar_t__ ms; scalar_t__ seq; } ;
typedef TYPE_1__ streamID ;
struct TYPE_22__ {TYPE_1__ last_id; int length; int rax; } ;
typedef TYPE_2__ stream ;
typedef scalar_t__ sds ;
struct TYPE_23__ {scalar_t__ ptr; } ;
typedef TYPE_3__ robj ;
typedef int rax_key ;
struct TYPE_24__ {unsigned char* data; int key_len; int key; } ;
typedef TYPE_4__ raxIterator ;
typedef scalar_t__ int64_t ;
struct TYPE_20__ {size_t stream_node_max_bytes; scalar_t__ stream_node_max_entries; } ;


 int C_ERR ;
 int C_OK ;
 int LP_INTBUF_SIZE ;
 int STREAM_ITEM_FLAG_NONE ;
 int STREAM_ITEM_FLAG_SAMEFIELDS ;
 unsigned char* lpAppend (unsigned char*,unsigned char*,size_t) ;
 unsigned char* lpAppendInteger (unsigned char*,scalar_t__) ;
 size_t lpBytes (unsigned char*) ;
 unsigned char* lpFirst (unsigned char*) ;
 unsigned char* lpGet (unsigned char*,scalar_t__*,unsigned char*) ;
 scalar_t__ lpGetInteger (unsigned char*) ;
 unsigned char* lpNew () ;
 unsigned char* lpNext (unsigned char*,unsigned char*) ;
 unsigned char* lpReplaceInteger (unsigned char*,unsigned char**,scalar_t__) ;
 scalar_t__ memcmp (unsigned char*,scalar_t__,scalar_t__) ;
 int memcpy (int *,int ,int) ;
 int raxInsert (int ,unsigned char*,int,unsigned char*,int *) ;
 scalar_t__ raxNext (TYPE_4__*) ;
 int raxSeek (TYPE_4__*,char*,int *,int ) ;
 int raxStart (TYPE_4__*,int ) ;
 int raxStop (TYPE_4__*) ;
 size_t sdslen (scalar_t__) ;
 TYPE_15__ server ;
 int serverAssert (int) ;
 scalar_t__ streamCompareID (TYPE_1__*,TYPE_1__*) ;
 int streamDecodeID (int *,TYPE_1__*) ;
 int streamEncodeID (int *,TYPE_1__*) ;
 int streamNextID (TYPE_1__*,TYPE_1__*) ;

int streamAppendItem(stream *s, robj **argv, int64_t numfields, streamID *added_id, streamID *use_id) {


    streamID id;
    if (use_id)
        id = *use_id;
    else
        streamNextID(&s->last_id,&id);





    if (streamCompareID(&id,&s->last_id) <= 0) return C_ERR;


    raxIterator ri;
    raxStart(&ri,s->rax);
    raxSeek(&ri,"$",((void*)0),0);

    size_t lp_bytes = 0;
    unsigned char *lp = ((void*)0);


    if (raxNext(&ri)) {
        lp = ri.data;
        lp_bytes = lpBytes(lp);
    }
    raxStop(&ri);




    uint64_t rax_key[2];
    streamID master_id;
    if (lp != ((void*)0)) {
        if (server.stream_node_max_bytes &&
            lp_bytes >= server.stream_node_max_bytes)
        {
            lp = ((void*)0);
        } else if (server.stream_node_max_entries) {
            int64_t count = lpGetInteger(lpFirst(lp));
            if (count >= server.stream_node_max_entries) lp = ((void*)0);
        }
    }

    int flags = STREAM_ITEM_FLAG_NONE;
    if (lp == ((void*)0) || lp_bytes >= server.stream_node_max_bytes) {
        master_id = id;
        streamEncodeID(rax_key,&id);

        lp = lpNew();
        lp = lpAppendInteger(lp,1);
        lp = lpAppendInteger(lp,0);
        lp = lpAppendInteger(lp,numfields);
        for (int64_t i = 0; i < numfields; i++) {
            sds field = argv[i*2]->ptr;
            lp = lpAppend(lp,(unsigned char*)field,sdslen(field));
        }
        lp = lpAppendInteger(lp,0);
        raxInsert(s->rax,(unsigned char*)&rax_key,sizeof(rax_key),lp,((void*)0));


        flags |= STREAM_ITEM_FLAG_SAMEFIELDS;
    } else {
        serverAssert(ri.key_len == sizeof(rax_key));
        memcpy(rax_key,ri.key,sizeof(rax_key));


        streamDecodeID(rax_key,&master_id);
        unsigned char *lp_ele = lpFirst(lp);


        int64_t count = lpGetInteger(lp_ele);
        lp = lpReplaceInteger(lp,&lp_ele,count+1);
        lp_ele = lpNext(lp,lp_ele);
        lp_ele = lpNext(lp,lp_ele);



        int64_t master_fields_count = lpGetInteger(lp_ele);
        lp_ele = lpNext(lp,lp_ele);
        if (numfields == master_fields_count) {
            int64_t i;
            for (i = 0; i < master_fields_count; i++) {
                sds field = argv[i*2]->ptr;
                int64_t e_len;
                unsigned char buf[LP_INTBUF_SIZE];
                unsigned char *e = lpGet(lp_ele,&e_len,buf);

                if (sdslen(field) != (size_t)e_len ||
                    memcmp(e,field,e_len) != 0) break;
                lp_ele = lpNext(lp,lp_ele);
            }


            if (i == master_fields_count) flags |= STREAM_ITEM_FLAG_SAMEFIELDS;
        }
    }
    lp = lpAppendInteger(lp,flags);
    lp = lpAppendInteger(lp,id.ms - master_id.ms);
    lp = lpAppendInteger(lp,id.seq - master_id.seq);
    if (!(flags & STREAM_ITEM_FLAG_SAMEFIELDS))
        lp = lpAppendInteger(lp,numfields);
    for (int64_t i = 0; i < numfields; i++) {
        sds field = argv[i*2]->ptr, value = argv[i*2+1]->ptr;
        if (!(flags & STREAM_ITEM_FLAG_SAMEFIELDS))
            lp = lpAppend(lp,(unsigned char*)field,sdslen(field));
        lp = lpAppend(lp,(unsigned char*)value,sdslen(value));
    }

    int64_t lp_count = numfields;
    lp_count += 3;
    if (!(flags & STREAM_ITEM_FLAG_SAMEFIELDS)) {


        lp_count += numfields+1;
    }
    lp = lpAppendInteger(lp,lp_count);


    if (ri.data != lp)
        raxInsert(s->rax,(unsigned char*)&rax_key,sizeof(rax_key),lp,((void*)0));
    s->length++;
    s->last_id = id;
    if (added_id) *added_id = id;
    return C_OK;
}
