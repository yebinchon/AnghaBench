
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int IgnoreReason ;


 int FALSE ;
 int G_N_ELEMENTS (char*) ;
 int IGNORE_REASON_END_SPACE_PERIOD ;
 int IGNORE_REASON_INVALID_CHARACTER ;
 int TRUE ;
 int g_strfreev (char**) ;
 char** g_strsplit (char const*,char*,int) ;
 int g_strv_length (char**) ;
 scalar_t__ has_trailing_space_or_period (char*) ;
 scalar_t__ strchr (char*,char) ;

gboolean
should_ignore_on_checkout (const char *file_path, IgnoreReason *ignore_reason)
{
    gboolean ret = FALSE;
    return ret;
}
