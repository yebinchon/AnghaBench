
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger {int level; } ;


 int LOG_EMERG ;
 int LOG_PVERB ;
 int MAX (int ,int ) ;
 int MIN (int,int ) ;
 int loga (char*,int ) ;
 struct logger logger ;

void
log_level_set(int level)
{
    struct logger *l = &logger;

    l->level = MAX(LOG_EMERG, MIN(level, LOG_PVERB));
    loga("set log level to %d", l->level);
}
