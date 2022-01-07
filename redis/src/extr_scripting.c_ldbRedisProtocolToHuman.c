
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 char* ldbRedisProtocolToHuman_Bool (int *,char*) ;
 char* ldbRedisProtocolToHuman_Bulk (int *,char*) ;
 char* ldbRedisProtocolToHuman_Double (int *,char*) ;
 char* ldbRedisProtocolToHuman_Int (int *,char*) ;
 char* ldbRedisProtocolToHuman_Map (int *,char*) ;
 char* ldbRedisProtocolToHuman_MultiBulk (int *,char*) ;
 char* ldbRedisProtocolToHuman_Null (int *,char*) ;
 char* ldbRedisProtocolToHuman_Set (int *,char*) ;
 char* ldbRedisProtocolToHuman_Status (int *,char*) ;

char *ldbRedisProtocolToHuman(sds *o, char *reply) {
    char *p = reply;
    switch(*p) {
    case ':': p = ldbRedisProtocolToHuman_Int(o,reply); break;
    case '$': p = ldbRedisProtocolToHuman_Bulk(o,reply); break;
    case '+': p = ldbRedisProtocolToHuman_Status(o,reply); break;
    case '-': p = ldbRedisProtocolToHuman_Status(o,reply); break;
    case '*': p = ldbRedisProtocolToHuman_MultiBulk(o,reply); break;
    case '~': p = ldbRedisProtocolToHuman_Set(o,reply); break;
    case '%': p = ldbRedisProtocolToHuman_Map(o,reply); break;
    case '_': p = ldbRedisProtocolToHuman_Null(o,reply); break;
    case '#': p = ldbRedisProtocolToHuman_Bool(o,reply); break;
    case ',': p = ldbRedisProtocolToHuman_Double(o,reply); break;
    }
    return p;
}
