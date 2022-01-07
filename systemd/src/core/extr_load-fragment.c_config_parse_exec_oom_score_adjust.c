
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oom_score_adjust_set; int oom_score_adjust; } ;
typedef TYPE_1__ ExecContext ;


 int ERANGE ;
 int LOG_ERR ;
 int assert (void*) ;
 scalar_t__ isempty (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int parse_oom_score_adjust (char const*,int*) ;

int config_parse_exec_oom_score_adjust(
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

        ExecContext *c = data;
        int oa, r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (isempty(rvalue)) {
                c->oom_score_adjust_set = 0;
                return 0;
        }

        r = parse_oom_score_adjust(rvalue, &oa);
        if (r < 0) {
                if (r == -ERANGE)
                        log_syntax(unit, LOG_ERR, filename, line, r, "OOM score adjust value out of range, ignoring: %s", rvalue);
                else
                        log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse the OOM score adjust value '%s', ignoring: %m", rvalue);
                return 0;
        }

        c->oom_score_adjust = oa;
        c->oom_score_adjust_set = 1;

        return 0;
}
