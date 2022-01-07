
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int * name; } ;
struct seat_config {int fallback; int hide_cursor_timeout; scalar_t__ allow_constrain; TYPE_1__ xcursor_theme; TYPE_2__* attachments; } ;
struct seat_attachment_config {int identifier; } ;
struct TYPE_4__ {int length; struct seat_attachment_config** items; } ;


 scalar_t__ CONSTRAIN_DEFAULT ;
 int free (int *) ;
 int list_add (TYPE_2__*,struct seat_attachment_config*) ;
 int merge_seat_attachment_config (struct seat_attachment_config*,struct seat_attachment_config*) ;
 struct seat_attachment_config* seat_attachment_config_copy (struct seat_attachment_config*) ;
 scalar_t__ strcmp (int ,int ) ;
 int * strdup (int *) ;

void merge_seat_config(struct seat_config *dest, struct seat_config *source) {
 if (source->fallback != -1) {
  dest->fallback = source->fallback;
 }

 for (int i = 0; i < source->attachments->length; ++i) {
  struct seat_attachment_config *source_attachment =
   source->attachments->items[i];
  bool found = 0;
  for (int j = 0; j < dest->attachments->length; ++j) {
   struct seat_attachment_config *dest_attachment =
    dest->attachments->items[j];
   if (strcmp(source_attachment->identifier,
      dest_attachment->identifier) == 0) {
    merge_seat_attachment_config(dest_attachment,
     source_attachment);
    found = 1;
   }
  }

  if (!found) {
   struct seat_attachment_config *copy =
    seat_attachment_config_copy(source_attachment);
   if (copy) {
    list_add(dest->attachments, copy);
   }
  }
 }

 if (source->hide_cursor_timeout != -1) {
  dest->hide_cursor_timeout = source->hide_cursor_timeout;
 }

 if (source->allow_constrain != CONSTRAIN_DEFAULT) {
  dest->allow_constrain = source->allow_constrain;
 }

 if (source->xcursor_theme.name != ((void*)0)) {
  free(dest->xcursor_theme.name);
  dest->xcursor_theme.name = strdup(source->xcursor_theme.name);
  dest->xcursor_theme.size = source->xcursor_theme.size;
 }
}
