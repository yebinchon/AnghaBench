
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union view_column_options {int dummy; } view_column_options ;
struct option_info {int dummy; } ;
typedef enum view_column_type { ____Placeholder_view_column_type } view_column_type ;


 int COLUMN_OPTIONS (int ) ;
 int DEFINE_COLUMN_OPTION_INFO_CHECK ;

struct option_info *
find_column_option_info(enum view_column_type type, union view_column_options *opts,
   const char *option, struct option_info *column_info,
   const char **column_name)
{
 COLUMN_OPTIONS(DEFINE_COLUMN_OPTION_INFO_CHECK);

 *column_name = ((void*)0);
 return ((void*)0);
}
