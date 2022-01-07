
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef int msg ;
struct TYPE_5__ {int verbosity; } ;
struct TYPE_4__ {char* name; } ;
typedef TYPE_1__ RedisModule ;


 int LL_DEBUG ;
 int LL_NOTICE ;
 int LL_VERBOSE ;
 int LL_WARNING ;
 int LOG_MAX_LEN ;
 TYPE_2__ server ;
 int serverLogRaw (int,char*) ;
 size_t snprintf (char*,int,char*,char*) ;
 int strcasecmp (char const*,char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

void RM_LogRaw(RedisModule *module, const char *levelstr, const char *fmt, va_list ap) {
    char msg[LOG_MAX_LEN];
    size_t name_len;
    int level;

    if (!strcasecmp(levelstr,"debug")) level = LL_DEBUG;
    else if (!strcasecmp(levelstr,"verbose")) level = LL_VERBOSE;
    else if (!strcasecmp(levelstr,"notice")) level = LL_NOTICE;
    else if (!strcasecmp(levelstr,"warning")) level = LL_WARNING;
    else level = LL_VERBOSE;

    if (level < server.verbosity) return;

    name_len = snprintf(msg, sizeof(msg),"<%s> ", module? module->name: "module");
    vsnprintf(msg + name_len, sizeof(msg) - name_len, fmt, ap);
    serverLogRaw(level,msg);
}
