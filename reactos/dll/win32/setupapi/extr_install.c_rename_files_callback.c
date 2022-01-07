
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_callback_info {int queue; } ;
typedef int PCWSTR ;
typedef int HINF ;
typedef int BOOL ;


 int SetupQueueRenameSectionW (int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL rename_files_callback( HINF hinf, PCWSTR field, void *arg )
{
    struct files_callback_info *info = arg;
    SetupQueueRenameSectionW( info->queue, hinf, 0, field );
    return TRUE;
}
