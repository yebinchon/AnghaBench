
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int REDIS_VERSION ;
 int redisGitDirty () ;
 int redisGitSHA1 () ;
 int sdscat (int ,char*) ;
 int sdscatprintf (int ,char*,...) ;
 int sdsempty () ;
 scalar_t__ strtoll (int ,int *,int) ;

__attribute__((used)) static sds cliVersion(void) {
    sds version;
    version = sdscatprintf(sdsempty(), "%s", REDIS_VERSION);


    if (strtoll(redisGitSHA1(),((void*)0),16)) {
        version = sdscatprintf(version, " (git:%s", redisGitSHA1());
        if (strtoll(redisGitDirty(),((void*)0),10))
            version = sdscatprintf(version, "-dirty");
        version = sdscat(version, ")");
    }
    return version;
}
