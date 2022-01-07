
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int slaves; } ;
typedef TYPE_1__ sentinelRedisInstance ;
typedef int sds ;
typedef int buf ;


 int NET_PEER_ID_LEN ;
 int SRI_MASTER ;
 int anetFormatAddr (char*,int,char*,int) ;
 TYPE_1__* dictFetchValue (int ,int ) ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;
 int serverAssert (int) ;

sentinelRedisInstance *sentinelRedisInstanceLookupSlave(
                sentinelRedisInstance *ri, char *ip, int port)
{
    sds key;
    sentinelRedisInstance *slave;
    char buf[NET_PEER_ID_LEN];

    serverAssert(ri->flags & SRI_MASTER);
    anetFormatAddr(buf,sizeof(buf),ip,port);
    key = sdsnew(buf);
    slave = dictFetchValue(ri->slaves,key);
    sdsfree(key);
    return slave;
}
