
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seaf_dir; } ;
typedef int SeafileSessionInfo ;
typedef int GObject ;
typedef int GError ;


 int g_object_set (int *,char*,int ,int *) ;
 TYPE_1__* seaf ;
 int * seafile_session_info_new () ;

GObject *
seafile_get_session_info (GError **error)
{
    SeafileSessionInfo *info;

    info = seafile_session_info_new ();
    g_object_set (info, "datadir", seaf->seaf_dir, ((void*)0));
    return (GObject *) info;
}
