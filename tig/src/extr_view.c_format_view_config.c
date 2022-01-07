
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
typedef int type ;
struct view_column {size_t type; struct view_column* next; } ;
struct enum_map {TYPE_1__* entries; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {int name; } ;


 int SIZEOF_STR ;
 int SUCCESS ;
 int enum_name_copy (char*,int,int ) ;
 int error (char*) ;
 int format_view_column (struct view_column*,char*,int) ;
 int string_nformat (char*,size_t,size_t*,char*,char const*,char*,char*) ;
 struct enum_map* view_column_type_map ;

enum status_code
format_view_config(struct view_column *column, char buf[], size_t bufsize)
{
 const struct enum_map *map = view_column_type_map;
 const char *sep = "";
 size_t bufpos = 0;
 char type[SIZEOF_STR];
 char value[SIZEOF_STR];

 for (; column; column = column->next) {
  enum status_code code = format_view_column(column, value, sizeof(value));

  if (code != SUCCESS)
   return code;

  if (!enum_name_copy(type, sizeof(type), map->entries[column->type].name)
      || !string_nformat(buf, bufsize, &bufpos, "%s%s%s",
           sep, type, value))
   return error("No space left in buffer");

  sep = " ";
 }

 return SUCCESS;
}
