
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_LOG_FLAG_FATAL ;
 int G_LOG_FLAG_RECURSION ;
 int G_LOG_LEVEL_DEBUG ;
 int G_LOG_LEVEL_INFO ;
 int G_LOG_LEVEL_MASK ;
 int ccnet_expand_path (char const*) ;
 int ccnet_log ;
 void* ccnet_log_level ;
 int * g_fopen (int ,char*) ;
 int g_log_set_handler (char*,int,int ,int *) ;
 int g_strdup (char const*) ;
 void* get_debug_level (char const*,int ) ;
 int logfile ;
 int * logfp ;
 int seaf_message (char*,int ) ;
 int seafile_log ;
 void* seafile_log_level ;
 int * stdout ;
 scalar_t__ strcmp (char const*,char*) ;

int
seafile_log_init (const char *_logfile, const char *ccnet_debug_level_str,
                  const char *seafile_debug_level_str)
{
    g_log_set_handler (((void*)0), G_LOG_LEVEL_MASK | G_LOG_FLAG_FATAL
                       | G_LOG_FLAG_RECURSION, seafile_log, ((void*)0));
    g_log_set_handler ("Ccnet", G_LOG_LEVEL_MASK | G_LOG_FLAG_FATAL
                       | G_LOG_FLAG_RECURSION, ccnet_log, ((void*)0));


    ccnet_log_level = get_debug_level(ccnet_debug_level_str, G_LOG_LEVEL_INFO);
    seafile_log_level = get_debug_level(seafile_debug_level_str, G_LOG_LEVEL_DEBUG);

    if (strcmp(_logfile, "-") == 0) {
        logfp = stdout;
        logfile = g_strdup (_logfile);
    }
    else {
        logfile = ccnet_expand_path(_logfile);
        if ((logfp = g_fopen (logfile, "a+")) == ((void*)0)) {
            seaf_message ("Failed to open file %s\n", logfile);
            return -1;
        }
    }

    return 0;
}
