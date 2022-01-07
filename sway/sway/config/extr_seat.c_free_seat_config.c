
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct seat_config* name; } ;
struct seat_config {TYPE_1__ xcursor_theme; TYPE_2__* attachments; struct seat_config* name; } ;
struct TYPE_4__ {int length; int * items; } ;


 int free (struct seat_config*) ;
 int list_free (TYPE_2__*) ;
 int seat_attachment_config_free (int ) ;

void free_seat_config(struct seat_config *seat) {
 if (!seat) {
  return;
 }

 free(seat->name);
 for (int i = 0; i < seat->attachments->length; ++i) {
  seat_attachment_config_free(seat->attachments->items[i]);
 }
 list_free(seat->attachments);
 free(seat->xcursor_theme.name);
 free(seat);
}
