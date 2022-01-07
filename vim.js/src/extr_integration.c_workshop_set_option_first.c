
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int atoi (char*) ;
 int save_files ;
 int strcmp (char*,char*) ;
 int workshop_balloon_delay (int) ;
 int workshop_balloon_mode (int) ;
 int workshop_hotkeys (int) ;
 int workshop_set_option (char*,char*) ;

void workshop_set_option_first(char *name, char *value)
{



 Boolean on = !strcmp(value, "on");

 if (!strcmp(name, "workshopkeys")) {
  workshop_hotkeys(on);
 } else if (!strcmp(name, "savefiles")) {
  save_files = on;
 } else if (!strcmp(name, "balloon")) {
  workshop_balloon_mode(on);
 } else if (!strcmp(name, "balloondelay")) {
  int delay = atoi(value);

  workshop_balloon_delay(delay);
 } else {

  workshop_set_option(name, value);
 }
}
