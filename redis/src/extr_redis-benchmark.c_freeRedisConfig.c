
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ appendonly; scalar_t__ save; } ;
typedef TYPE_1__ redisConfig ;


 int sdsfree (scalar_t__) ;
 int zfree (TYPE_1__*) ;

__attribute__((used)) static void freeRedisConfig(redisConfig *cfg) {
    if (cfg->save) sdsfree(cfg->save);
    if (cfg->appendonly) sdsfree(cfg->appendonly);
    zfree(cfg);
}
