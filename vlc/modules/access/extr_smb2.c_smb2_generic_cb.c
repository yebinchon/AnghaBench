
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_context {int dummy; } ;


 int VLC_SMB2_GENERIC_CB () ;
 int VLC_UNUSED (void*) ;

__attribute__((used)) static void
smb2_generic_cb(struct smb2_context *smb2, int status, void *data,
                void *private_data)
{
    VLC_UNUSED(data);
    VLC_SMB2_GENERIC_CB();
}
