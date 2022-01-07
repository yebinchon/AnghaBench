
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int setTypeIterator ;
typedef int sds ;
typedef int robj ;
typedef int int64_t ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_13__ {size_t resp; int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_14__ {int * emptyset; } ;


 scalar_t__ C_OK ;
 int DICT_ERR ;
 int DICT_OK ;
 int OBJ_ENCODING_INTSET ;
 int OBJ_SET ;
 int SET_OP_UNION ;
 unsigned long SRANDMEMBER_SUB_STRATEGY_MUL ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyBulk (TYPE_1__*,int ) ;
 int addReplyBulkCBuffer (TYPE_1__*,int ,int ) ;
 int addReplyBulkLongLong (TYPE_1__*,int ) ;
 int addReplySetLen (TYPE_1__*,unsigned long) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int * createStringObject (int ,int ) ;
 int * createStringObjectFromLongLong (int ) ;
 int decrRefCount (int *) ;
 int dictAdd (int *,int *,int *) ;
 int * dictCreate (int *,int *) ;
 int dictDelete (int *,int ) ;
 int * dictGetIterator (int *) ;
 int dictGetKey (int *) ;
 int * dictGetRandomKey (int *) ;
 int * dictNext (int *) ;
 int dictRelease (int *) ;
 int dictReleaseIterator (int *) ;
 unsigned long dictSize (int *) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,int ,long*,int *) ;
 int * lookupKeyReadOrReply (TYPE_1__*,int ,int ) ;
 int objectKeyPointerValueDictType ;
 int sdslen (int ) ;
 int serverAssert (int) ;
 int * setTypeInitIterator (int *) ;
 int setTypeNext (int *,int *,int *) ;
 int setTypeRandomElement (int *,int *,int *) ;
 int setTypeReleaseIterator (int *) ;
 unsigned long setTypeSize (int *) ;
 TYPE_4__ shared ;
 int sunionDiffGenericCommand (TYPE_1__*,int *,int,int *,int ) ;

void srandmemberWithCountCommand(client *c) {
    long l;
    unsigned long count, size;
    int uniq = 1;
    robj *set;
    sds ele;
    int64_t llele;
    int encoding;

    dict *d;

    if (getLongFromObjectOrReply(c,c->argv[2],&l,((void*)0)) != C_OK) return;
    if (l >= 0) {
        count = (unsigned long) l;
    } else {


        count = -l;
        uniq = 0;
    }

    if ((set = lookupKeyReadOrReply(c,c->argv[1],shared.emptyset[c->resp]))
        == ((void*)0) || checkType(c,set,OBJ_SET)) return;
    size = setTypeSize(set);


    if (count == 0) {
        addReply(c,shared.emptyset[c->resp]);
        return;
    }





    if (!uniq) {
        addReplySetLen(c,count);
        while(count--) {
            encoding = setTypeRandomElement(set,&ele,&llele);
            if (encoding == OBJ_ENCODING_INTSET) {
                addReplyBulkLongLong(c,llele);
            } else {
                addReplyBulkCBuffer(c,ele,sdslen(ele));
            }
        }
        return;
    }




    if (count >= size) {
        sunionDiffGenericCommand(c,c->argv+1,1,((void*)0),SET_OP_UNION);
        return;
    }


    d = dictCreate(&objectKeyPointerValueDictType,((void*)0));
    if (count*SRANDMEMBER_SUB_STRATEGY_MUL > size) {
        setTypeIterator *si;


        si = setTypeInitIterator(set);
        while((encoding = setTypeNext(si,&ele,&llele)) != -1) {
            int retval = DICT_ERR;

            if (encoding == OBJ_ENCODING_INTSET) {
                retval = dictAdd(d,createStringObjectFromLongLong(llele),((void*)0));
            } else {
                retval = dictAdd(d,createStringObject(ele,sdslen(ele)),((void*)0));
            }
            serverAssert(retval == DICT_OK);
        }
        setTypeReleaseIterator(si);
        serverAssert(dictSize(d) == size);


        while(size > count) {
            dictEntry *de;

            de = dictGetRandomKey(d);
            dictDelete(d,dictGetKey(de));
            size--;
        }
    }





    else {
        unsigned long added = 0;
        robj *objele;

        while(added < count) {
            encoding = setTypeRandomElement(set,&ele,&llele);
            if (encoding == OBJ_ENCODING_INTSET) {
                objele = createStringObjectFromLongLong(llele);
            } else {
                objele = createStringObject(ele,sdslen(ele));
            }



            if (dictAdd(d,objele,((void*)0)) == DICT_OK)
                added++;
            else
                decrRefCount(objele);
        }
    }


    {
        dictIterator *di;
        dictEntry *de;

        addReplySetLen(c,count);
        di = dictGetIterator(d);
        while((de = dictNext(di)) != ((void*)0))
            addReplyBulk(c,dictGetKey(de));
        dictReleaseIterator(di);
        dictRelease(d);
    }
}
