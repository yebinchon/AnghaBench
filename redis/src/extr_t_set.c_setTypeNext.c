
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ encoding; int ii; TYPE_1__* subject; int di; } ;
typedef TYPE_2__ setTypeIterator ;
typedef int * sds ;
typedef int int64_t ;
typedef int dictEntry ;
struct TYPE_4__ {int ptr; } ;


 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_INTSET ;
 int * dictGetKey (int *) ;
 int * dictNext (int ) ;
 int intsetGet (int ,int ,int*) ;
 int serverPanic (char*) ;

int setTypeNext(setTypeIterator *si, sds *sdsele, int64_t *llele) {
    if (si->encoding == OBJ_ENCODING_HT) {
        dictEntry *de = dictNext(si->di);
        if (de == ((void*)0)) return -1;
        *sdsele = dictGetKey(de);
        *llele = -123456789;
    } else if (si->encoding == OBJ_ENCODING_INTSET) {
        if (!intsetGet(si->subject->ptr,si->ii++,llele))
            return -1;
        *sdsele = ((void*)0);
    } else {
        serverPanic("Wrong set encoding in setTypeNext");
    }
    return si->encoding;
}
