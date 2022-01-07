
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gpointer ;
typedef int gboolean ;
struct TYPE_2__ {int event; } ;
typedef TYPE_1__ SDEventSource ;
typedef int GSourceFunc ;
typedef int GSource ;


 scalar_t__ sd_event_dispatch (int ) ;

__attribute__((used)) static gboolean event_dispatch(GSource *source, GSourceFunc callback, gpointer user_data) {
  return sd_event_dispatch(((SDEventSource *)source)->event) > 0;
}
