
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 char* skynet_malloc (size_t) ;
 size_t strlen (char const*) ;

char *
skynet_strdup(const char *str) {
 size_t sz = strlen(str);
 char * ret = skynet_malloc(sz+1);
 memcpy(ret, str, sz+1);
 return ret;
}
