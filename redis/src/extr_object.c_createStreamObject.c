
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stream ;
struct TYPE_4__ {int encoding; } ;
typedef TYPE_1__ robj ;


 int OBJ_ENCODING_STREAM ;
 int OBJ_STREAM ;
 TYPE_1__* createObject (int ,int *) ;
 int * streamNew () ;

robj *createStreamObject(void) {
    stream *s = streamNew();
    robj *o = createObject(OBJ_STREAM,s);
    o->encoding = OBJ_ENCODING_STREAM;
    return o;
}
