
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int start_time; int io; int * pipe; int vid; } ;


 int reset_view (struct view*) ;
 int string_ncopy (int ,char const*,int ) ;
 int strlen (char const*) ;
 int time (int *) ;

__attribute__((used)) static void
setup_update(struct view *view, const char *vid)
{
 reset_view(view);

 string_ncopy(view->vid, vid, strlen(vid));
 view->pipe = &view->io;
 view->start_time = time(((void*)0));
}
