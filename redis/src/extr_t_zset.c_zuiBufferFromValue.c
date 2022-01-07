
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* estr; unsigned char* _buf; int ell; int elen; int * ele; } ;
typedef TYPE_1__ zsetopval ;


 int ll2string (char*,int,int ) ;
 int sdslen (int *) ;

int zuiBufferFromValue(zsetopval *val) {
    if (val->estr == ((void*)0)) {
        if (val->ele != ((void*)0)) {
            val->elen = sdslen(val->ele);
            val->estr = (unsigned char*)val->ele;
        } else {
            val->elen = ll2string((char*)val->_buf,sizeof(val->_buf),val->ell);
            val->estr = val->_buf;
        }
    }
    return 1;
}
