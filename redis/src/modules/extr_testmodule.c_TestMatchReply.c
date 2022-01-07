
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCallReply ;


 int * RedisModule_CreateStringFromCallReply (int *) ;
 char* RedisModule_StringPtrLen (int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

int TestMatchReply(RedisModuleCallReply *reply, char *str) {
    RedisModuleString *mystr;
    mystr = RedisModule_CreateStringFromCallReply(reply);
    if (!mystr) return 0;
    const char *ptr = RedisModule_StringPtrLen(mystr,((void*)0));
    return strcmp(ptr,str) == 0;
}
