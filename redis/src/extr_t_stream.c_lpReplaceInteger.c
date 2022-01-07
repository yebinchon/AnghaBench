
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int buf ;


 int LONG_STR_SIZE ;
 int LP_REPLACE ;
 int ll2string (char*,int,int ) ;
 unsigned char* lpInsert (unsigned char*,unsigned char*,int,unsigned char*,int ,unsigned char**) ;

unsigned char *lpReplaceInteger(unsigned char *lp, unsigned char **pos, int64_t value) {
    char buf[LONG_STR_SIZE];
    int slen = ll2string(buf,sizeof(buf),value);
    return lpInsert(lp, (unsigned char*)buf, slen, *pos, LP_REPLACE, pos);
}
