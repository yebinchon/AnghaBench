
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int buf ;


 int LD_STR_AUTO ;
 int LD_STR_HUMAN ;
 int MAX_LONG_DOUBLE_CHARS ;
 int * createStringObject (char*,int) ;
 int ld2string (char*,int,long double,int ) ;

robj *createStringObjectFromLongDouble(long double value, int humanfriendly) {
    char buf[MAX_LONG_DOUBLE_CHARS];
    int len = ld2string(buf,sizeof(buf),value,humanfriendly? LD_STR_HUMAN: LD_STR_AUTO);
    return createStringObject(buf,len);
}
