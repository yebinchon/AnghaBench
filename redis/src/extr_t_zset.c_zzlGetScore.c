
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,unsigned char*,unsigned int) ;
 int serverAssert (int ) ;
 double strtod (char*,int *) ;
 int ziplistGet (unsigned char*,unsigned char**,unsigned int*,long long*) ;

double zzlGetScore(unsigned char *sptr) {
    unsigned char *vstr;
    unsigned int vlen;
    long long vlong;
    char buf[128];
    double score;

    serverAssert(sptr != ((void*)0));
    serverAssert(ziplistGet(sptr,&vstr,&vlen,&vlong));

    if (vstr) {
        memcpy(buf,vstr,vlen);
        buf[vlen] = '\0';
        score = strtod(buf,((void*)0));
    } else {
        score = vlong;
    }

    return score;
}
