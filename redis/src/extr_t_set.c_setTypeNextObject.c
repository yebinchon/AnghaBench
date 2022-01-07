
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int setTypeIterator ;
typedef int * sds ;
typedef int int64_t ;




 int * sdsdup (int *) ;
 int * sdsfromlonglong (int ) ;
 int serverPanic (char*) ;
 int setTypeNext (int *,int **,int *) ;

sds setTypeNextObject(setTypeIterator *si) {
    int64_t intele;
    sds sdsele;
    int encoding;

    encoding = setTypeNext(si,&sdsele,&intele);
    switch(encoding) {
        case -1: return ((void*)0);
        case 128:
            return sdsfromlonglong(intele);
        case 129:
            return sdsdup(sdsele);
        default:
            serverPanic("Unsupported encoding");
    }
    return ((void*)0);
}
