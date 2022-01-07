
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * usri1_script_path; int usri1_flags; int * usri1_comment; int * usri1_home_dir; int usri1_priv; int usri1_password; int usri1_name; } ;
typedef TYPE_1__ USER_INFO_1 ;
typedef int NET_API_STATUS ;
typedef int LPBYTE ;


 int UF_SCRIPT ;
 int USER_PRIV_USER ;
 int pNetUserAdd (int *,int,int ,int *) ;
 int sTestUserName ;
 int sTestUserOldPass ;

__attribute__((used)) static NET_API_STATUS create_test_user(void)
{
    USER_INFO_1 usri;

    usri.usri1_name = sTestUserName;
    usri.usri1_password = sTestUserOldPass;
    usri.usri1_priv = USER_PRIV_USER;
    usri.usri1_home_dir = ((void*)0);
    usri.usri1_comment = ((void*)0);
    usri.usri1_flags = UF_SCRIPT;
    usri.usri1_script_path = ((void*)0);

    return pNetUserAdd(((void*)0), 1, (LPBYTE)&usri, ((void*)0));
}
