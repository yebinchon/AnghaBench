
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long int64_t ;


 unsigned char* lpGet (unsigned char*,long long*,int *) ;
 int serverAssert (int) ;
 int string2ll (char*,long long,long long*) ;

int64_t lpGetInteger(unsigned char *ele) {
    int64_t v;
    unsigned char *e = lpGet(ele,&v,((void*)0));
    if (e == ((void*)0)) return v;



    long long ll;
    int retval = string2ll((char*)e,v,&ll);
    serverAssert(retval != 0);
    v = ll;
    return v;
}
