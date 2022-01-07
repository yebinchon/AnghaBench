
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Window ;
struct TYPE_4__ {int utf8_string_atom; int name_atom; } ;
struct TYPE_5__ {TYPE_1__ ewmhints; int display; } ;
typedef TYPE_2__ RDPCLIENT ;


 int PropModeReplace ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int) ;
 int strlen (char const*) ;

void
ewmh_set_wm_name(RDPCLIENT * This, Window wnd, const char *title)
{
 int len;

 len = strlen(title);
 XChangeProperty(This->display, wnd, This->ewmhints.name_atom, This->ewmhints.utf8_string_atom,
   8, PropModeReplace, (unsigned char *) title, len);
}
