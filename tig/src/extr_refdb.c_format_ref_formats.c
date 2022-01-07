
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_format {int end; int start; } ;
struct enum_map {int size; TYPE_1__* entries; } ;
typedef int name ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum reference_type { ____Placeholder_reference_type } reference_type ;
struct TYPE_2__ {int name; } ;


 int SIZEOF_STR ;
 int SUCCESS ;
 int enum_name_copy (char*,int,int ) ;
 int error (char*) ;
 struct enum_map* reference_type_map ;
 int string_nformat (char*,size_t,size_t*,char*,char const*,int ,char*,int ) ;

enum status_code
format_ref_formats(struct ref_format **formats, char buf[], size_t bufsize)
{
 const struct enum_map *map = reference_type_map;
 char name[SIZEOF_STR];
 enum reference_type type;
 size_t bufpos = 0;
 const char *sep = "";

 if (!formats)
  return SUCCESS;

 for (type = 0; type < map->size; type++) {
  struct ref_format *format = formats[type];

  if (!format)
   continue;

  if (!enum_name_copy(name, sizeof(name), map->entries[type].name)
      || !string_nformat(buf, bufsize, &bufpos, "%s%s%s%s",
           sep, format->start, name, format->end))
   return error("No space left in buffer");

  sep = " ";
 }

 return SUCCESS;
}
