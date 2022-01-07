
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_io_hdr {int sb_len_wr; int sbp; int driver_status; int host_status; int msg_status; int status; } ;


 int sg_err_category_new (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int sg_err_category3(struct sg_io_hdr *hp) {
        return sg_err_category_new(hp->status, hp->msg_status,
                                   hp->host_status, hp->driver_status,
                                   hp->sbp, hp->sb_len_wr);
}
