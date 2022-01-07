
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seat_config {TYPE_1__* attachments; } ;
struct seat_attachment_config {int identifier; } ;
struct TYPE_2__ {int length; struct seat_attachment_config** items; } ;


 scalar_t__ strcmp (int ,char*) ;

struct seat_attachment_config *seat_config_get_attachment(
  struct seat_config *seat_config, char *identifier) {
 for (int i = 0; i < seat_config->attachments->length; ++i) {
  struct seat_attachment_config *attachment =
   seat_config->attachments->items[i];
  if (strcmp(attachment->identifier, identifier) == 0) {
   return attachment;
  }
 }

 return ((void*)0);
}
