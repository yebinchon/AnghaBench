
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cols_cnt; char** cols; char** lines; int lines_cnt; } ;
typedef TYPE_1__ vdev_cmd_data_t ;


 char** realloc (char**,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;

__attribute__((used)) static int
vdev_process_cmd_output(vdev_cmd_data_t *data, char *line)
{
 char *col = ((void*)0);
 char *val = line;
 char *equals;
 char **tmp;

 if (line == ((void*)0))
  return (1);

 equals = strchr(line, '=');
 if (equals != ((void*)0)) {




  *equals = '\0';
  col = line;
  val = equals + 1;
 } else {
  val = line;
 }


 if (col != ((void*)0)) {
  for (int i = 0; i < data->cols_cnt; i++) {
   if (strcmp(col, data->cols[i]) == 0)
    return (0);
  }
 }

 if (val != ((void*)0)) {
  tmp = realloc(data->lines,
      (data->lines_cnt + 1) * sizeof (*data->lines));
  if (tmp == ((void*)0))
   return (1);

  data->lines = tmp;
  data->lines[data->lines_cnt] = strdup(val);
  data->lines_cnt++;
 }

 if (col != ((void*)0)) {
  tmp = realloc(data->cols,
      (data->cols_cnt + 1) * sizeof (*data->cols));
  if (tmp == ((void*)0))
   return (1);

  data->cols = tmp;
  data->cols[data->cols_cnt] = strdup(col);
  data->cols_cnt++;
 }

 if (val != ((void*)0) && col == ((void*)0))
  return (1);

 return (0);
}
