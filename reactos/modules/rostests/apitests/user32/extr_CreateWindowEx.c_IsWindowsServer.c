
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int osvi ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {int member_0; int member_9; int member_8; int member_7; int member_6; TYPE_1__ member_5; int member_4; int member_3; int member_2; int member_1; } ;
typedef TYPE_2__ OSVERSIONINFOEXW ;
typedef int DWORDLONG ;
typedef int BOOL ;


 int VER_EQUAL ;
 int VER_NT_WORKSTATION ;
 int VER_PRODUCT_TYPE ;
 int VerSetConditionMask (int ,int ,int ) ;
 int VerifyVersionInfoW (TYPE_2__*,int ,int const) ;

__attribute__((used)) static BOOL
IsWindowsServer()
{
    OSVERSIONINFOEXW osvi = { sizeof(osvi), 0, 0, 0, 0, {0}, 0, 0, 0, VER_NT_WORKSTATION };
    DWORDLONG const dwlConditionMask = VerSetConditionMask( 0, VER_PRODUCT_TYPE, VER_EQUAL );

    return !VerifyVersionInfoW(&osvi, VER_PRODUCT_TYPE, dwlConditionMask);
}
