
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enum_map {int size; TYPE_1__* entries; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {unsigned int value; int name; } ;


 int SUCCESS ;
 int assert (int) ;
 char const* enum_name (int ) ;
 int error (char*,char const*,char const*,char const*) ;
 scalar_t__ map_enum_do (TYPE_1__*,int,int*,char const*) ;
 int parse_bool (int*,char const*) ;
 int strcasecmp (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum status_code
parse_enum(const char *name, unsigned int *opt, const char *arg,
    const struct enum_map *map)
{
 bool is_true;
 enum status_code code;

 assert(map->size > 1);

 if (map_enum_do(map->entries, map->size, (int *) opt, arg))
  return SUCCESS;

 code = parse_bool(&is_true, arg);
 *opt = is_true ? map->entries[1].value : map->entries[0].value;
 if (code == SUCCESS)
  return code;

 if (!strcmp(name, "date-display")) {
  const char *msg = "";

  if (!strcasecmp(arg, "local"))
   msg = ", use the 'date-local' column option";
  else if (!strcasecmp(arg, "short"))
   msg = ", use the 'custom' display mode and set 'date-format'";

  *opt = map->entries[1].value;
  return error("'%s' is no longer supported for %s%s", arg, name, msg);
 }

 return error("'%s' is not a valid value for %s; using %s",
       arg, name, enum_name(map->entries[*opt].name));
}
