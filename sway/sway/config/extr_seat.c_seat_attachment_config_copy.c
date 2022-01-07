
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seat_attachment_config {int identifier; } ;


 struct seat_attachment_config* seat_attachment_config_new () ;
 int strdup (int ) ;

__attribute__((used)) static struct seat_attachment_config *seat_attachment_config_copy(
  struct seat_attachment_config *attachment) {
 struct seat_attachment_config *copy = seat_attachment_config_new();
 if (!copy) {
  return ((void*)0);
 }

 copy->identifier = strdup(attachment->identifier);

 return copy;
}
