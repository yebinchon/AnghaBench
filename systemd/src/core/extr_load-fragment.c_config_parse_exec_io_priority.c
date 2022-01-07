
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioprio_set; void* ioprio; } ;
typedef TYPE_1__ ExecContext ;


 int IOPRIO_CLASS_BE ;
 int IOPRIO_PRIO_CLASS (void*) ;
 void* IOPRIO_PRIO_VALUE (int ,int) ;
 int LOG_ERR ;
 int assert (void*) ;
 int ioprio_parse_priority (char const*,int*) ;
 scalar_t__ isempty (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;

int config_parse_exec_io_priority(const char *unit,
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
        int i, r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (isempty(rvalue)) {
                c->ioprio_set = 0;
                c->ioprio = IOPRIO_PRIO_VALUE(IOPRIO_CLASS_BE, 0);
                return 0;
        }

        r = ioprio_parse_priority(rvalue, &i);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse IO priority, ignoring: %s", rvalue);
                return 0;
        }

        c->ioprio = IOPRIO_PRIO_VALUE(IOPRIO_PRIO_CLASS(c->ioprio), i);
        c->ioprio_set = 1;

        return 0;
}
