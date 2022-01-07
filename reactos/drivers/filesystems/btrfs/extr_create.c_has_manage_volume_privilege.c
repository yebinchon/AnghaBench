
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int SubjectSecurityContext; } ;
struct TYPE_7__ {int PrivilegeCount; TYPE_1__* Privilege; int Control; } ;
struct TYPE_6__ {scalar_t__ Attributes; int Luid; } ;
typedef TYPE_2__ PRIVILEGE_SET ;
typedef int KPROCESSOR_MODE ;
typedef TYPE_3__ ACCESS_STATE ;


 int PRIVILEGE_SET_ALL_NECESSARY ;
 int RtlConvertLongToLuid (int ) ;
 int SE_MANAGE_VOLUME_PRIVILEGE ;
 scalar_t__ SePrivilegeCheck (TYPE_2__*,int *,int ) ;

__attribute__((used)) static bool has_manage_volume_privilege(ACCESS_STATE* access_state, KPROCESSOR_MODE processor_mode) {
    PRIVILEGE_SET privset;

    privset.PrivilegeCount = 1;
    privset.Control = PRIVILEGE_SET_ALL_NECESSARY;
    privset.Privilege[0].Luid = RtlConvertLongToLuid(SE_MANAGE_VOLUME_PRIVILEGE);
    privset.Privilege[0].Attributes = 0;

    return SePrivilegeCheck(&privset, &access_state->SubjectSecurityContext, processor_mode) ? 1 : 0;
}
