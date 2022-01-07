
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view_column {int type; } ;
typedef enum view_column_type { ____Placeholder_view_column_type } view_column_type ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {int size; int * entries; } ;


 int SUCCESS ;
 scalar_t__ enum_equals (int ,char const*,size_t) ;
 int error (char*,int,char const*) ;
 size_t strcspn (char const*,char*) ;
 TYPE_1__* view_column_type_map ;

__attribute__((used)) static enum status_code
parse_view_column_type(struct view_column *column, const char **arg)
{
 enum view_column_type type;
 size_t typelen = strcspn(*arg, ":,");

 for (type = 0; type < view_column_type_map->size; type++)
  if (enum_equals(view_column_type_map->entries[type], *arg, typelen)) {
   *arg += typelen + !!(*arg)[typelen];
   column->type = type;
   return SUCCESS;
  }

 return error("Failed to parse view column type: %.*s", (int) typelen, *arg);
}
