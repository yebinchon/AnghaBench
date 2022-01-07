
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icon_theme_subdir {char* name; int size; int max_size; int min_size; int threshold; int type; } ;
struct icon_theme {TYPE_1__* subdirs; int directories; void* inherits; void* comment; void* name; } ;
struct TYPE_2__ {int length; struct icon_theme_subdir** items; } ;


 int FIXED ;
 int SCALABLE ;
 int THRESHOLD ;
 int split_string (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int entry_handler(char *group, char *key, char *value,
  struct icon_theme *theme) {
 if (strcmp(group, "Icon Theme") == 0) {
  if (strcmp(key, "Name") == 0) {
   theme->name = strdup(value);
  } else if (strcmp(key, "Comment") == 0) {
   theme->comment = strdup(value);
  } else if (strcmp(key, "Inherits") == 0) {
   theme->inherits = strdup(value);
  } else if (strcmp(key, "Directories") == 0) {
   theme->directories = split_string(value, ",");
  }
 } else {
  if (theme->subdirs->length == 0) {
   return 0;
  }

  struct icon_theme_subdir *subdir =
   theme->subdirs->items[theme->subdirs->length - 1];
  if (strcmp(subdir->name, group) != 0) {
   return 0;
  }

  char *end;
  int n = strtol(value, &end, 10);
  if (strcmp(key, "Size") == 0) {
   subdir->size = n;
   return *end != '\0';
  } else if (strcmp(key, "Type") == 0) {
   if (strcmp(value, "Fixed") == 0) {
    subdir->type = FIXED;
   } else if (strcmp(value, "Scalable") == 0) {
    subdir->type = SCALABLE;
   } else if (strcmp(value, "Threshold") == 0) {
    subdir->type = THRESHOLD;
   } else {
    return 1;
   }
  } else if (strcmp(key, "MaxSize") == 0) {
   subdir->max_size = n;
   return *end != '\0';
  } else if (strcmp(key, "MinSize") == 0) {
   subdir->min_size = n;
   return *end != '\0';
  } else if (strcmp(key, "Threshold") == 0) {
   subdir->threshold = n;
   return *end != '\0';
  }
 }
 return 0;
}
