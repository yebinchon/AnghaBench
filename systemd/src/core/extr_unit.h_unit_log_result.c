
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;


 int unit_log_failure (int *,char const*) ;
 int unit_log_success (int *) ;

__attribute__((used)) static inline void unit_log_result(Unit *u, bool success, const char *result) {
        if (success)
                unit_log_success(u);
        else
                unit_log_failure(u, result);
}
