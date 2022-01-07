
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int options; int source; int destination; } ;
typedef TYPE_1__ oci_mount_data ;


 int free (int ) ;
 int strv_free (int ) ;

__attribute__((used)) static void cleanup_oci_mount_data(oci_mount_data *data) {
        free(data->destination);
        free(data->source);
        strv_free(data->options);
        free(data->type);
}
