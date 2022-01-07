
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int robj ;


 int rdbSaveObject (int *,int *,int *) ;
 int serverAssertWithInfo (int *,int *,int) ;

size_t rdbSavedObjectLen(robj *o) {
    ssize_t len = rdbSaveObject(((void*)0),o,((void*)0));
    serverAssertWithInfo(((void*)0),o,len != -1);
    return len;
}
