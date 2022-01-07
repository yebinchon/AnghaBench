
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_format {int dummy; } ;
struct enum_map {int size; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int ERROR_OUT_OF_MEMORY ;
 int SUCCESS ;
 struct ref_format** calloc (int ,int) ;
 int parse_ref_format_arg (struct ref_format**,char const*,struct enum_map const*) ;
 struct enum_map* reference_type_map ;

enum status_code
parse_ref_formats(struct ref_format ***formats, const char *argv[])
{
 const struct enum_map *map = reference_type_map;
 int argc;

 if (!*formats) {
  *formats = calloc(reference_type_map->size, sizeof(struct ref_format *));
  if (!*formats)
   return ERROR_OUT_OF_MEMORY;
 }

 for (argc = 0; argv[argc]; argc++) {
  enum status_code code = parse_ref_format_arg(*formats, argv[argc], map);
  if (code != SUCCESS)
   return code;
 }

 return SUCCESS;
}
