
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; int new_name; int name; int unmerge_state; int type; } ;
struct TYPE_4__ {TYPE_2__* data; struct TYPE_4__* next; } ;
typedef int GString ;
typedef TYPE_1__ GList ;
typedef TYPE_2__ DiffEntry ;


 scalar_t__ DIFF_STATUS_RENAMED ;
 int FALSE ;
 int g_string_append_printf (int *,char*,int ,scalar_t__,int ,int,int ,...) ;
 char* g_string_free (int *,int ) ;
 int * g_string_new (char*) ;
 scalar_t__ strlen (int ) ;

char *
format_diff_results(GList *results)
{
    GList *ptr;
    GString *fmt_status;
    DiffEntry *de;

    fmt_status = g_string_new("");

    for (ptr = results; ptr; ptr = ptr->next) {
        de = ptr->data;

        if (de->status != DIFF_STATUS_RENAMED)
            g_string_append_printf(fmt_status, "%c %c %d %u %s\n",
                                   de->type, de->status, de->unmerge_state,
                                   (int)strlen(de->name), de->name);
        else
            g_string_append_printf(fmt_status, "%c %c %d %u %s %u %s\n",
                                   de->type, de->status, de->unmerge_state,
                                   (int)strlen(de->name), de->name,
                                   (int)strlen(de->new_name), de->new_name);
    }

    return g_string_free(fmt_status, FALSE);
}
