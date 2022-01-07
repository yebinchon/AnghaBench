
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int * name; } ;
struct seat_config {int fallback; int hide_cursor_timeout; TYPE_1__ xcursor_theme; int allow_constrain; struct seat_config* name; struct seat_config* attachments; } ;


 int CONSTRAIN_DEFAULT ;
 int SWAY_DEBUG ;
 struct seat_config* calloc (int,int) ;
 struct seat_config* create_list () ;
 int free (struct seat_config*) ;
 struct seat_config* strdup (char const*) ;
 int sway_assert (struct seat_config*,char*) ;
 int sway_log (int ,char*) ;

struct seat_config *new_seat_config(const char* name) {
 struct seat_config *seat = calloc(1, sizeof(struct seat_config));
 if (!seat) {
  sway_log(SWAY_DEBUG, "Unable to allocate seat config");
  return ((void*)0);
 }

 seat->name = strdup(name);
 if (!sway_assert(seat->name, "could not allocate name for seat")) {
  free(seat);
  return ((void*)0);
 }

 seat->fallback = -1;
 seat->attachments = create_list();
 if (!sway_assert(seat->attachments,
    "could not allocate seat attachments list")) {
  free(seat->name);
  free(seat);
  return ((void*)0);
 }
 seat->hide_cursor_timeout = -1;
 seat->allow_constrain = CONSTRAIN_DEFAULT;
 seat->xcursor_theme.name = ((void*)0);
 seat->xcursor_theme.size = 24;

 return seat;
}
