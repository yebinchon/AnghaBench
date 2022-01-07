
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cols_cnt; char** lines; int lines_cnt; int * cols; int pool; int path; } ;
typedef TYPE_1__ vdev_cmd_data_t ;
struct TYPE_5__ {int count; int uniq_cols_cnt; char const** uniq_cols; char** uniq_cols_width; TYPE_1__* data; } ;
typedef TYPE_2__ vdev_cmd_data_list_t ;


 scalar_t__ is_blank_str (char*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static void
zpool_print_cmd(vdev_cmd_data_list_t *vcdl, const char *pool, char *path)
{
 vdev_cmd_data_t *data;
 int i, j;
 char *val;

 for (i = 0; i < vcdl->count; i++) {
  if ((strcmp(vcdl->data[i].path, path) != 0) ||
      (strcmp(vcdl->data[i].pool, pool) != 0)) {

   continue;
  }

  data = &vcdl->data[i];

  for (j = 0; j < vcdl->uniq_cols_cnt; j++) {
   val = ((void*)0);

   for (int k = 0; k < data->cols_cnt; k++) {
    if (strcmp(data->cols[k],
        vcdl->uniq_cols[j]) == 0) {

     val = data->lines[k];
     break;
    }
   }




   if (is_blank_str(val))
    val = "-";

   printf("%*s", vcdl->uniq_cols_width[j], val);
   if (j < vcdl->uniq_cols_cnt - 1)
    printf("  ");
  }


  for (j = data->cols_cnt; j < data->lines_cnt; j++) {

   if (vcdl->uniq_cols_cnt > 0)
    printf("  ");

   val = data->lines[j];
   printf("%s", val ? val : "");
  }
  break;
 }
}
