
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_name; } ;
typedef TYPE_1__ seekpoint_t ;


 int _ (char*) ;
 int asprintf (char**,int ,int) ;
 char* strdup (char*) ;

__attribute__((used)) static char *
seekpoint_GetName(seekpoint_t *seekpoint, int idx, int chapter_offset)
{
    if (seekpoint->psz_name && seekpoint->psz_name[0] != '\0' )
        return strdup(seekpoint->psz_name);

    char *dup;
    int ret = asprintf(&dup, _("Chapter %i"), idx + chapter_offset);
    if (ret == -1)
        return ((void*)0);
    return dup;
}
