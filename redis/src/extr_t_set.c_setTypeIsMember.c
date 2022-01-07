
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
struct TYPE_3__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
typedef int intset ;
typedef int dict ;


 scalar_t__ C_OK ;
 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_INTSET ;
 int * dictFind (int *,int ) ;
 int intsetFind (int *,long long) ;
 scalar_t__ isSdsRepresentableAsLongLong (int ,long long*) ;
 int serverPanic (char*) ;

int setTypeIsMember(robj *subject, sds value) {
    long long llval;
    if (subject->encoding == OBJ_ENCODING_HT) {
        return dictFind((dict*)subject->ptr,value) != ((void*)0);
    } else if (subject->encoding == OBJ_ENCODING_INTSET) {
        if (isSdsRepresentableAsLongLong(value,&llval) == C_OK) {
            return intsetFind((intset*)subject->ptr,llval);
        }
    } else {
        serverPanic("Unknown set encoding");
    }
    return 0;
}
