
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_mode; } ;
typedef TYPE_1__ SeafStat ;


 int S_ISDIR (int ) ;
 int g_free (char*) ;
 char* g_strdup (char const*) ;
 scalar_t__ seaf_stat (char const*,TYPE_1__*) ;
 int strlen (char*) ;

int
checkdir (const char *dir)
{
    SeafStat st;
    if ((seaf_stat(dir, &st) < 0) || !S_ISDIR(st.st_mode))
        return -1;
    return 0;

}
