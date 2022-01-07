
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int router_preference; } ;
typedef TYPE_1__ Network ;


 int EINVAL ;
 int LOG_ERR ;
 int SD_NDISC_PREFERENCE_HIGH ;
 int SD_NDISC_PREFERENCE_LOW ;
 int SD_NDISC_PREFERENCE_MEDIUM ;
 scalar_t__ STR_IN_SET (char const*,char*,char*,char*) ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_router_preference(const char *unit,
                                   const char *filename,
                                   unsigned line,
                                   const char *section,
                                   unsigned section_line,
                                   const char *lvalue,
                                   int ltype,
                                   const char *rvalue,
                                   void *data,
                                   void *userdata) {
        Network *network = userdata;

        assert(filename);
        assert(section);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (streq(rvalue, "high"))
                network->router_preference = SD_NDISC_PREFERENCE_HIGH;
        else if (STR_IN_SET(rvalue, "medium", "normal", "default"))
                network->router_preference = SD_NDISC_PREFERENCE_MEDIUM;
        else if (streq(rvalue, "low"))
                network->router_preference = SD_NDISC_PREFERENCE_LOW;
        else
                log_syntax(unit, LOG_ERR, filename, line, -EINVAL, "Router preference '%s' is invalid, ignoring assignment: %m", rvalue);

        return 0;
}
