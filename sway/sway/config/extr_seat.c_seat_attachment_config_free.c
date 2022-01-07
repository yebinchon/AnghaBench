
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seat_attachment_config {struct seat_attachment_config* identifier; } ;


 int free (struct seat_attachment_config*) ;

__attribute__((used)) static void seat_attachment_config_free(
  struct seat_attachment_config *attachment) {
 free(attachment->identifier);
 free(attachment);
 return;
}
