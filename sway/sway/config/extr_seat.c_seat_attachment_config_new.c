
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seat_attachment_config {int dummy; } ;


 int SWAY_DEBUG ;
 struct seat_attachment_config* calloc (int,int) ;
 int sway_log (int ,char*) ;

struct seat_attachment_config *seat_attachment_config_new(void) {
 struct seat_attachment_config *attachment =
  calloc(1, sizeof(struct seat_attachment_config));
 if (!attachment) {
  sway_log(SWAY_DEBUG, "cannot allocate attachment config");
  return ((void*)0);
 }
 return attachment;
}
