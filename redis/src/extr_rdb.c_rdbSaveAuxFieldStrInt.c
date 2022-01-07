
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int rio ;
typedef int buf ;


 int LONG_STR_SIZE ;
 int ll2string (char*,int,long long) ;
 int rdbSaveAuxField (int *,char*,int ,char*,int) ;
 int strlen (char*) ;

ssize_t rdbSaveAuxFieldStrInt(rio *rdb, char *key, long long val) {
    char buf[LONG_STR_SIZE];
    int vlen = ll2string(buf,sizeof(buf),val);
    return rdbSaveAuxField(rdb,key,strlen(key),buf,vlen);
}
