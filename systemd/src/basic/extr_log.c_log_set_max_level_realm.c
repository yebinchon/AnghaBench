
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t LogRealm ;


 size_t ELEMENTSOF (int*) ;
 int LOG_PRIMASK ;
 int assert (int) ;
 int* log_max_level ;

void log_set_max_level_realm(LogRealm realm, int level) {
        assert((level & LOG_PRIMASK) == level);
        assert(realm < ELEMENTSOF(log_max_level));

        log_max_level[realm] = level;
}
