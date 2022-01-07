
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int JobType ;


 int DISABLE_WARNING_FORMAT_NONLITERAL ;
 int IN_SET (int ,int ,int ) ;
 int JOB_START ;
 int JOB_STOP ;
 int REENABLE_WARNING ;
 int assert (int *) ;
 char* job_get_begin_status_message_format (int *,int ) ;
 int unit_status_printf (int *,char*,char const*) ;

__attribute__((used)) static void job_print_begin_status_message(Unit *u, JobType t) {
        const char *format;

        assert(u);


        if (!IN_SET(t, JOB_START, JOB_STOP))
                return;

        format = job_get_begin_status_message_format(u, t);

        DISABLE_WARNING_FORMAT_NONLITERAL;
        unit_status_printf(u, "", format);
        REENABLE_WARNING;
}
