
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column {int dummy; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int COLUMN_OPTIONS (int ) ;
 int DEFINE_COLUMN_OPTIONS_PARSE ;
 int error (char*,char const*) ;

__attribute__((used)) static enum status_code
parse_view_column_option(struct view_column *column,
    const char *opt_name, const char *opt_value)
{
 COLUMN_OPTIONS(DEFINE_COLUMN_OPTIONS_PARSE);

 return error("Unknown view column option: %s", opt_name);
}
