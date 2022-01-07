
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb2_context {int dummy; } ;
struct TYPE_2__ {void* share_enum; } ;


 int VLC_SMB2_GENERIC_CB () ;
 TYPE_1__* sys ;

__attribute__((used)) static void
smb2_share_enum_cb(struct smb2_context *smb2, int status, void *data,
                   void *private_data)
{
    VLC_SMB2_GENERIC_CB();

    sys->share_enum = data;
}
