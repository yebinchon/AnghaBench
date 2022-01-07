
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; } ;
typedef TYPE_1__ robj ;
typedef int client ;


 int C_ERR ;
 int C_OK ;
 int addReplyError (int *,char*) ;
 size_t sdslen (char*) ;
 scalar_t__ string2ll (char*,size_t,long long*) ;

int getBitOffsetFromArgument(client *c, robj *o, size_t *offset, int hash, int bits) {
    long long loffset;
    char *err = "bit offset is not an integer or out of range";
    char *p = o->ptr;
    size_t plen = sdslen(p);
    int usehash = 0;


    if (p[0] == '#' && hash && bits > 0) usehash = 1;

    if (string2ll(p+usehash,plen-usehash,&loffset) == 0) {
        addReplyError(c,err);
        return C_ERR;
    }


    if (usehash) loffset *= bits;


    if ((loffset < 0) || ((unsigned long long)loffset >> 3) >= (512*1024*1024))
    {
        addReplyError(c,err);
        return C_ERR;
    }

    *offset = (size_t)loffset;
    return C_OK;
}
