
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smb2_context {int dummy; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ read; } ;
struct TYPE_6__ {int eof; TYPE_2__ res; } ;


 int VLC_SMB2_GENERIC_CB () ;
 int VLC_UNUSED (void*) ;
 TYPE_3__* sys ;

__attribute__((used)) static void
smb2_read_cb(struct smb2_context *smb2, int status, void *data,
             void *private_data)
{
    VLC_UNUSED(data);
    VLC_SMB2_GENERIC_CB();

    if (status == 0)
        sys->eof = 1;
    else
        sys->res.read.len = status;
}
