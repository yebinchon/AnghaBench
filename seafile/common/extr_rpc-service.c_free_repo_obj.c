
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gpointer ;
typedef int GObject ;


 int g_object_unref (int *) ;

__attribute__((used)) static void
free_repo_obj (gpointer repo)
{
    if (!repo)
        return;
    g_object_unref ((GObject *)repo);
}
