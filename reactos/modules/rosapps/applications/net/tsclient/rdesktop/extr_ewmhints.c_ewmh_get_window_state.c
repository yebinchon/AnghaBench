
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int Window ;
struct TYPE_5__ {scalar_t__ state_maximized_vert_atom; scalar_t__ state_maximized_horz_atom; scalar_t__ state_hidden_atom; } ;
struct TYPE_6__ {TYPE_1__ ewmhints; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef scalar_t__ BOOL ;


 scalar_t__ False ;
 int SEAMLESSRDP_MAXIMIZED ;
 int SEAMLESSRDP_MINIMIZED ;
 int SEAMLESSRDP_NORMAL ;
 scalar_t__ True ;
 int XFree (unsigned char*) ;
 scalar_t__ get_property_value (TYPE_2__*,int ,char*,int,unsigned long*,unsigned char**,int ) ;

int
ewmh_get_window_state(RDPCLIENT * This, Window w)
{
 unsigned long nitems_return;
 unsigned char *prop_return;
 uint32 *return_words;
 unsigned long item;
 BOOL maximized_vert, maximized_horz, hidden;

 maximized_vert = maximized_horz = hidden = False;

 if (get_property_value(This, w, "_NET_WM_STATE", 64, &nitems_return, &prop_return, 0) < 0)
  return SEAMLESSRDP_NORMAL;

 return_words = (uint32 *) prop_return;

 for (item = 0; item < nitems_return; item++)
 {
  if (return_words[item] == This->ewmhints.state_maximized_vert_atom)
   maximized_vert = True;
  if (return_words[item] == This->ewmhints.state_maximized_horz_atom)
   maximized_horz = True;
  if (return_words[item] == This->ewmhints.state_hidden_atom)
   hidden = True;
 }

 XFree(prop_return);

 if (maximized_vert && maximized_horz)
  return SEAMLESSRDP_MAXIMIZED;
 else if (hidden)
  return SEAMLESSRDP_MINIMIZED;
 else
  return SEAMLESSRDP_NORMAL;
}
