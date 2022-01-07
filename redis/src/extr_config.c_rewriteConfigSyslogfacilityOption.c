
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rewriteConfigState {int dummy; } ;
typedef int sds ;
struct TYPE_2__ {int syslog_facility; } ;


 int LOG_LOCAL0 ;
 char* configEnumGetNameOrUnknown (int ,int) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char const*,int ,int) ;
 int sdscatprintf (int ,char*,char const*,char const*) ;
 int sdsempty () ;
 TYPE_1__ server ;
 int syslog_facility_enum ;

void rewriteConfigSyslogfacilityOption(struct rewriteConfigState *state) {
    int value = server.syslog_facility;
    int force = value != LOG_LOCAL0;
    const char *name = ((void*)0), *option = "syslog-facility";
    sds line;

    name = configEnumGetNameOrUnknown(syslog_facility_enum,value);
    line = sdscatprintf(sdsempty(),"%s %s",option,name);
    rewriteConfigRewriteLine(state,option,line,force);
}
