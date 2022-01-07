
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int enabled; scalar_t__ threshold_bytes; } ;
typedef TYPE_1__ JournalCompressOptions ;


 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ isempty (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,...) ;
 int parse_boolean (char const*) ;
 int parse_size (char const*,int,scalar_t__*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_compress(
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

        JournalCompressOptions* compress = data;
        int r;

        if (isempty(rvalue)) {
                compress->enabled = 1;
                compress->threshold_bytes = (uint64_t) -1;
        } else if (streq(rvalue, "1")) {
                log_syntax(unit, LOG_WARNING, filename, line, 0,
                           "Compress= ambiguously specified as 1, enabling compression with default threshold");
                compress->enabled = 1;
        } else if (streq(rvalue, "0")) {
                log_syntax(unit, LOG_WARNING, filename, line, 0,
                           "Compress= ambiguously specified as 0, disabling compression");
                compress->enabled = 0;
        } else {
                r = parse_boolean(rvalue);
                if (r < 0) {
                        r = parse_size(rvalue, 1024, &compress->threshold_bytes);
                        if (r < 0)
                                log_syntax(unit, LOG_ERR, filename, line, r,
                                           "Failed to parse Compress= value, ignoring: %s", rvalue);
                        else
                                compress->enabled = 1;
                } else
                        compress->enabled = r;
        }

        return 0;
}
