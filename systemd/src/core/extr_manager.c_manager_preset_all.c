
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ first_boot; } ;
typedef TYPE_1__ Manager ;


 int EEXIST ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 int MANAGER_IS_SYSTEM (TYPE_1__*) ;
 scalar_t__ MANAGER_IS_TEST_RUN (TYPE_1__*) ;
 int UNIT_FILE_PRESET_ENABLE_ONLY ;
 int UNIT_FILE_SYSTEM ;
 int assert (TYPE_1__*) ;
 int log_full_errno (int ,int,char*) ;
 int log_info (char*) ;
 int unit_file_preset_all (int ,int ,int *,int ,int *,int ) ;

__attribute__((used)) static void manager_preset_all(Manager *m) {
        int r;

        assert(m);

        if (m->first_boot <= 0)
                return;

        if (!MANAGER_IS_SYSTEM(m))
                return;

        if (MANAGER_IS_TEST_RUN(m))
                return;


        r = unit_file_preset_all(UNIT_FILE_SYSTEM, 0, ((void*)0), UNIT_FILE_PRESET_ENABLE_ONLY, ((void*)0), 0);
        if (r < 0)
                log_full_errno(r == -EEXIST ? LOG_NOTICE : LOG_WARNING, r,
                               "Failed to populate /etc with preset unit settings, ignoring: %m");
        else
                log_info("Populated /etc with preset unit settings.");
}
