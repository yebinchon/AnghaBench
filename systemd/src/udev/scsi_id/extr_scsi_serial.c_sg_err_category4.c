
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_io_v4 {int response_len; scalar_t__ response; int driver_status; int transport_status; int device_status; } ;


 int sg_err_category_new (int ,int ,int ,int ,unsigned char*,int ) ;

__attribute__((used)) static int sg_err_category4(struct sg_io_v4 *hp) {
        return sg_err_category_new(hp->device_status, 0,
                                   hp->transport_status, hp->driver_status,
                                   (unsigned char *)(uintptr_t)hp->response,
                                   hp->response_len);
}
