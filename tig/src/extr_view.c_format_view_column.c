
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column {int type; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int COLUMN_OPTIONS (int ) ;
 int FORMAT_COLUMN_OPTIONS_PARSE ;
 int error (char*,int ) ;

__attribute__((used)) static enum status_code
format_view_column(struct view_column *column, char buf[], size_t bufsize)
{
 COLUMN_OPTIONS(FORMAT_COLUMN_OPTIONS_PARSE);

 return error("Unknown view column type: %d", column->type);
}
