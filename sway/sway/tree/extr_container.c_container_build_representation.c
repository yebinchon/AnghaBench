
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {char* formatted_title; scalar_t__ view; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;
typedef TYPE_1__ list_t ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;







 int lenient_strcat (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* view_get_app_id (scalar_t__) ;
 char* view_get_class (scalar_t__) ;

size_t container_build_representation(enum sway_container_layout layout,
  list_t *children, char *buffer) {
 size_t len = 2;
 switch (layout) {
 case 128:
  lenient_strcat(buffer, "V[");
  break;
 case 132:
  lenient_strcat(buffer, "H[");
  break;
 case 129:
  lenient_strcat(buffer, "T[");
  break;
 case 130:
  lenient_strcat(buffer, "S[");
  break;
 case 131:
  lenient_strcat(buffer, "D[");
  break;
 }
 for (int i = 0; i < children->length; ++i) {
  if (i != 0) {
   ++len;
   lenient_strcat(buffer, " ");
  }
  struct sway_container *child = children->items[i];
  const char *identifier = ((void*)0);
  if (child->view) {
   identifier = view_get_class(child->view);
   if (!identifier) {
    identifier = view_get_app_id(child->view);
   }
  } else {
   identifier = child->formatted_title;
  }
  if (identifier) {
   len += strlen(identifier);
   lenient_strcat(buffer, identifier);
  } else {
   len += 6;
   lenient_strcat(buffer, "(null)");
  }
 }
 ++len;
 lenient_strcat(buffer, "]");
 return len;
}
