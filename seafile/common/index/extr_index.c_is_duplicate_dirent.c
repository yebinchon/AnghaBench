
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int dname; } ;
typedef TYPE_1__ IndexDirent ;
typedef TYPE_2__ GList ;


 int FALSE ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) inline static gboolean
is_duplicate_dirent (GList *dirents, const char *dname)
{
    if (!dirents)
        return FALSE;

    IndexDirent *dent = dirents->data;

    return (strcmp(dent->dname, dname) == 0);
}
