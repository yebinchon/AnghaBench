
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t LogRealm ;


 int* log_max_level ;

int log_get_max_level_realm(LogRealm realm) {
        return log_max_level[realm];
}
