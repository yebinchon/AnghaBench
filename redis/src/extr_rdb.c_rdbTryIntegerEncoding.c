
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ll2string (char*,int,long long) ;
 scalar_t__ memcmp (char*,char*,size_t) ;
 int rdbEncodeInteger (long long,unsigned char*) ;
 size_t strlen (char*) ;
 long long strtoll (char*,char**,int) ;

int rdbTryIntegerEncoding(char *s, size_t len, unsigned char *enc) {
    long long value;
    char *endptr, buf[32];


    value = strtoll(s, &endptr, 10);
    if (endptr[0] != '\0') return 0;
    ll2string(buf,32,value);



    if (strlen(buf) != len || memcmp(buf,s,len)) return 0;

    return rdbEncodeInteger(value,enc);
}
