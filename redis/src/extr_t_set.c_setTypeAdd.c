
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int sds ;
struct TYPE_5__ {scalar_t__ encoding; int * ptr; } ;
typedef TYPE_1__ robj ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_6__ {scalar_t__ set_max_intset_entries; } ;


 scalar_t__ C_OK ;
 scalar_t__ DICT_OK ;
 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_INTSET ;
 scalar_t__ dictAdd (int *,int ,int *) ;
 int * dictAddRaw (int *,int ,int *) ;
 int dictSetKey (int *,int *,int ) ;
 int dictSetVal (int *,int *,int *) ;
 int * intsetAdd (int *,long long,scalar_t__*) ;
 scalar_t__ intsetLen (int *) ;
 scalar_t__ isSdsRepresentableAsLongLong (int ,long long*) ;
 int sdsdup (int ) ;
 TYPE_4__ server ;
 int serverAssert (int) ;
 int serverPanic (char*) ;
 int setTypeConvert (TYPE_1__*,scalar_t__) ;

int setTypeAdd(robj *subject, sds value) {
    long long llval;
    if (subject->encoding == OBJ_ENCODING_HT) {
        dict *ht = subject->ptr;
        dictEntry *de = dictAddRaw(ht,value,((void*)0));
        if (de) {
            dictSetKey(ht,de,sdsdup(value));
            dictSetVal(ht,de,((void*)0));
            return 1;
        }
    } else if (subject->encoding == OBJ_ENCODING_INTSET) {
        if (isSdsRepresentableAsLongLong(value,&llval) == C_OK) {
            uint8_t success = 0;
            subject->ptr = intsetAdd(subject->ptr,llval,&success);
            if (success) {


                if (intsetLen(subject->ptr) > server.set_max_intset_entries)
                    setTypeConvert(subject,OBJ_ENCODING_HT);
                return 1;
            }
        } else {

            setTypeConvert(subject,OBJ_ENCODING_HT);



            serverAssert(dictAdd(subject->ptr,sdsdup(value),((void*)0)) == DICT_OK);
            return 1;
        }
    } else {
        serverPanic("Unknown set encoding");
    }
    return 0;
}
