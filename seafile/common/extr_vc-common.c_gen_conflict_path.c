
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int gint64 ;
typedef int GString ;


 int FALSE ;
 int g_free (char*) ;
 char* g_strdup (char const*) ;
 char* g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 int g_string_printf (int *,char*,char*,char const*,...) ;
 int localtime (int *) ;
 int strftime (char*,int,char*,int ) ;
 char* strrchr (char*,char) ;

char *
gen_conflict_path (const char *origin_path,
                   const char *modifier,
                   gint64 mtime)
{
    char time_buf[64];
    time_t t = (time_t)mtime;
    char *copy = g_strdup (origin_path);
    GString *conflict_path = g_string_new (((void*)0));
    char *dot, *ext;

    strftime(time_buf, 64, "%Y-%m-%d-%H-%M-%S", localtime(&t));

    dot = strrchr (copy, '.');

    if (dot != ((void*)0)) {
        *dot = '\0';
        ext = dot + 1;
        if (modifier)
            g_string_printf (conflict_path, "%s (SFConflict %s %s).%s",
                             copy, modifier, time_buf, ext);
        else
            g_string_printf (conflict_path, "%s (SFConflict %s).%s",
                             copy, time_buf, ext);
    } else {
        if (modifier)
            g_string_printf (conflict_path, "%s (SFConflict %s %s)",
                             copy, modifier, time_buf);
        else
            g_string_printf (conflict_path, "%s (SFConflict %s)",
                             copy, time_buf);
    }

    g_free (copy);
    return g_string_free (conflict_path, FALSE);
}
