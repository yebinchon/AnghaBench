
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * manager; } ;
typedef TYPE_1__ Unit ;
typedef int Manager ;
typedef int EmergencyAction ;


 int EMERGENCY_ACTION_EXIT_FORCE ;
 int EOPNOTSUPP ;
 int LOG_ERR ;
 int LOG_INFO ;
 scalar_t__ MANAGER_IS_SYSTEM (int *) ;
 scalar_t__ MANAGER_IS_USER (int *) ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*,char const*,...) ;
 int parse_emergency_action (char const*,scalar_t__,int *) ;

int config_parse_emergency_action(
                const char* unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        Manager *m = ((void*)0);
        EmergencyAction *x = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (unit)
                m = ((Unit*) userdata)->manager;
        else
                m = data;

        r = parse_emergency_action(rvalue, MANAGER_IS_SYSTEM(m), x);
        if (r < 0) {
                if (r == -EOPNOTSUPP && MANAGER_IS_USER(m)) {


                        log_syntax(unit, LOG_INFO, filename, line, r,
                                   "%s= in user mode specified as \"%s\", using \"exit-force\" instead.",
                                   lvalue, rvalue);
                        *x = EMERGENCY_ACTION_EXIT_FORCE;
                        return 0;
                }

                if (r == -EOPNOTSUPP)
                        log_syntax(unit, LOG_ERR, filename, line, r,
                                   "%s= specified as %s mode action, ignoring: %s",
                                   lvalue, MANAGER_IS_SYSTEM(m) ? "user" : "system", rvalue);
                else
                        log_syntax(unit, LOG_ERR, filename, line, r,
                                   "Failed to parse %s=, ignoring: %s", lvalue, rvalue);
                return 0;
        }

        return 0;
}
