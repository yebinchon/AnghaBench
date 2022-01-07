
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expire_data {int ioctl_fd; int dev_autofs_fd; } ;


 int free (struct expire_data*) ;
 int safe_close (int ) ;

__attribute__((used)) static void expire_data_free(struct expire_data *data) {
        if (!data)
                return;

        safe_close(data->dev_autofs_fd);
        safe_close(data->ioctl_fd);
        free(data);
}
