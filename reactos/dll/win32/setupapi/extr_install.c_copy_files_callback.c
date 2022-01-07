
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_callback_info {int copy_flags; scalar_t__ layout; int src_root; int queue; } ;
typedef char* PCWSTR ;
typedef scalar_t__ HINF ;
typedef int BOOL ;


 int SetupQueueCopySectionW (int ,int ,scalar_t__,scalar_t__,char*,int ) ;
 int SetupQueueDefaultCopyW (int ,scalar_t__,int ,int *,char*,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL copy_files_callback( HINF hinf, PCWSTR field, void *arg )
{
    struct files_callback_info *info = arg;

    if (field[0] == '@')
        SetupQueueDefaultCopyW( info->queue, info->layout ? info->layout : hinf, info->src_root, ((void*)0), field+1, info->copy_flags );
    else
        SetupQueueCopySectionW( info->queue, info->src_root, info->layout ? info->layout : hinf, hinf, field, info->copy_flags );
    return TRUE;
}
