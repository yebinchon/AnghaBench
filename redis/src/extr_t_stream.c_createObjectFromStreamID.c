
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seq; int ms; } ;
typedef TYPE_1__ streamID ;
typedef int robj ;


 int OBJ_STRING ;
 int * createObject (int ,int ) ;
 int sdscatfmt (int ,char*,int ,int ) ;
 int sdsempty () ;

robj *createObjectFromStreamID(streamID *id) {
    return createObject(OBJ_STRING, sdscatfmt(sdsempty(),"%U-%U",
                        id->ms,id->seq));
}
