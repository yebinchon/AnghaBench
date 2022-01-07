
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JobMode ;


 int JOB_ISOLATE ;
 int JOB_REPLACE ;
 int LOG_ERR ;
 int assert (char const*) ;
 int log_notice (char*,char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int parse_boolean (char const*) ;

int config_parse_job_mode_isolate(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        JobMode *m = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        r = parse_boolean(rvalue);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse boolean, ignoring: %s", rvalue);
                return 0;
        }

        log_notice("%s is deprecated. Please use OnFailureJobMode= instead", lvalue);

        *m = r ? JOB_ISOLATE : JOB_REPLACE;
        return 0;
}
