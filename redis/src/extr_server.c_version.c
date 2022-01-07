
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* REDIS_VERSION ;
 char* ZMALLOC_LIB ;
 scalar_t__ atoi (int ) ;
 int exit (int ) ;
 int printf (char*,char*,char*,int,char*,int,unsigned long long) ;
 scalar_t__ redisBuildId () ;
 int redisGitDirty () ;
 char* redisGitSHA1 () ;

void version(void) {
    printf("Redis server v=%s sha=%s:%d malloc=%s bits=%d build=%llx\n",
        REDIS_VERSION,
        redisGitSHA1(),
        atoi(redisGitDirty()) > 0,
        ZMALLOC_LIB,
        sizeof(long) == 4 ? 32 : 64,
        (unsigned long long) redisBuildId());
    exit(0);
}
