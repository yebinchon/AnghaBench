
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int usb_function_strings; int usb_function_descriptors; } ;
typedef TYPE_1__ Service ;


 int EINVAL ;
 int copy_file_fd (int ,int,int ) ;

__attribute__((used)) static int usbffs_write_descs(int fd, Service *s) {
        int r;

        if (!s->usb_function_descriptors || !s->usb_function_strings)
                return -EINVAL;

        r = copy_file_fd(s->usb_function_descriptors, fd, 0);
        if (r < 0)
                return r;

        return copy_file_fd(s->usb_function_strings, fd, 0);
}
