
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int setTypeIterator ;
typedef int sds ;
struct TYPE_5__ {scalar_t__ type; int encoding; int * ptr; } ;
typedef TYPE_1__ robj ;
typedef int int64_t ;
typedef int dict ;


 scalar_t__ DICT_OK ;
 int OBJ_ENCODING_HT ;
 int OBJ_ENCODING_INTSET ;
 scalar_t__ OBJ_SET ;
 scalar_t__ dictAdd (int *,int ,int *) ;
 int * dictCreate (int *,int *) ;
 int dictExpand (int *,int ) ;
 int intsetLen (int *) ;
 int sdsfromlonglong (int ) ;
 int serverAssert (int) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 int serverPanic (char*) ;
 int setDictType ;
 int * setTypeInitIterator (TYPE_1__*) ;
 int setTypeNext (int *,int *,int *) ;
 int setTypeReleaseIterator (int *) ;
 int zfree (int *) ;

void setTypeConvert(robj *setobj, int enc) {
    setTypeIterator *si;
    serverAssertWithInfo(((void*)0),setobj,setobj->type == OBJ_SET &&
                             setobj->encoding == OBJ_ENCODING_INTSET);

    if (enc == OBJ_ENCODING_HT) {
        int64_t intele;
        dict *d = dictCreate(&setDictType,((void*)0));
        sds element;


        dictExpand(d,intsetLen(setobj->ptr));


        si = setTypeInitIterator(setobj);
        while (setTypeNext(si,&element,&intele) != -1) {
            element = sdsfromlonglong(intele);
            serverAssert(dictAdd(d,element,((void*)0)) == DICT_OK);
        }
        setTypeReleaseIterator(si);

        setobj->encoding = OBJ_ENCODING_HT;
        zfree(setobj->ptr);
        setobj->ptr = d;
    } else {
        serverPanic("Unsupported set conversion");
    }
}
