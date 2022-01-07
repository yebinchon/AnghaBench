
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cols_cnt; char** cols; char** lines; } ;
typedef TYPE_1__ vdev_cmd_data_t ;
struct TYPE_5__ {int count; char** uniq_cols; int uniq_cols_cnt; int* uniq_cols_width; TYPE_1__* data; } ;
typedef TYPE_2__ vdev_cmd_data_list_t ;


 int MAX (int,int) ;
 char** realloc (char**,int) ;
 int* safe_malloc (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
process_unique_cmd_columns(vdev_cmd_data_list_t *vcdl)
{
 char **uniq_cols = ((void*)0), **tmp = ((void*)0);
 int *uniq_cols_width;
 vdev_cmd_data_t *data;
 int cnt = 0;
 int k;


 for (int i = 0; i < vcdl->count; i++) {
  data = &vcdl->data[i];

  for (int j = 0; j < data->cols_cnt; j++) {

   for (k = 0; k < cnt; k++) {
    if (strcmp(data->cols[j], uniq_cols[k]) == 0)
     break;
   }
   if (k == cnt) {

    tmp = realloc(uniq_cols, sizeof (*uniq_cols) *
        (cnt + 1));
    if (tmp == ((void*)0))
     break;
    uniq_cols = tmp;
    uniq_cols[cnt] = data->cols[j];
    cnt++;
   }
  }
 }






 uniq_cols_width = safe_malloc(sizeof (*uniq_cols_width) * cnt);
 for (int i = 0; i < cnt; i++) {

  uniq_cols_width[i] = strlen(uniq_cols[i]);

  for (int j = 0; j < vcdl->count; j++) {

   data = &vcdl->data[j];
   for (k = 0; k < data->cols_cnt; k++) {

    if (strcmp(data->cols[k], uniq_cols[i]) == 0) {

     uniq_cols_width[i] =
         MAX(uniq_cols_width[i],
         strlen(data->lines[k]));
    }
   }
  }
 }

 vcdl->uniq_cols = uniq_cols;
 vcdl->uniq_cols_cnt = cnt;
 vcdl->uniq_cols_width = uniq_cols_width;
}
