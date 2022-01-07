
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANDROID_LOG_WARN ;
 int OutputDebugStringA (char const*) ;
 int __android_log_print (int ,char*,char*,char const*) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void fz_default_warning_callback(void *user, const char *message)
{
 fprintf(stderr, "warning: %s\n", message);
}
