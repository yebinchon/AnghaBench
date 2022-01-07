
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long LONG_MIN ;
 char* getInfoField (char*,char*) ;
 long strtol (char*,int *,int) ;
 int zfree (char*) ;

__attribute__((used)) static long getLongInfoField(char *info, char *field) {
    char *value = getInfoField(info,field);
    long l;

    if (!value) return LONG_MIN;
    l = strtol(value,((void*)0),10);
    zfree(value);
    return l;
}
