
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat {int dummy; } ;


 int DEFAULT_SEAT ;
 struct sway_seat* input_manager_get_seat (int ,int) ;

struct sway_seat *input_manager_get_default_seat(void) {
 return input_manager_get_seat(DEFAULT_SEAT, 1);
}
