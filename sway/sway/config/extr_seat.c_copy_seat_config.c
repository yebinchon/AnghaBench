
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seat_config {int name; } ;


 int merge_seat_config (struct seat_config*,struct seat_config*) ;
 struct seat_config* new_seat_config (int ) ;

struct seat_config *copy_seat_config(struct seat_config *seat) {
 struct seat_config *copy = new_seat_config(seat->name);
 if (copy == ((void*)0)) {
  return ((void*)0);
 }

 merge_seat_config(copy, seat);

 return copy;
}
