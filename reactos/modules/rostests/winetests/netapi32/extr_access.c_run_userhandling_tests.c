
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* usri1_password; void* usri1_name; int * usri1_script_path; int usri1_flags; int * usri1_comment; int * usri1_home_dir; int usri1_priv; } ;
typedef TYPE_1__ USER_INFO_1 ;
typedef scalar_t__ NET_API_STATUS ;
typedef int LPBYTE ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INVALID_LEVEL ;
 scalar_t__ NERR_BadUsername ;
 scalar_t__ NERR_PasswordTooShort ;
 scalar_t__ NERR_Success ;
 scalar_t__ NERR_UserExists ;
 scalar_t__ NERR_UserNotFound ;
 int UF_SCRIPT ;
 int USER_PRIV_USER ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 scalar_t__ pNetUserAdd (int *,int,int ,int *) ;
 scalar_t__ pNetUserDel (int *,void*) ;
 void* sTestUserName ;
 void* sTestUserOldPass ;
 void* sTooLongName ;
 void* sTooLongPassword ;
 int skip (char*) ;
 int trace (char*) ;

__attribute__((used)) static void run_userhandling_tests(void)
{
    NET_API_STATUS ret;
    USER_INFO_1 usri;

    usri.usri1_priv = USER_PRIV_USER;
    usri.usri1_home_dir = ((void*)0);
    usri.usri1_comment = ((void*)0);
    usri.usri1_flags = UF_SCRIPT;
    usri.usri1_script_path = ((void*)0);

    usri.usri1_name = sTooLongName;
    usri.usri1_password = sTestUserOldPass;

    ret = pNetUserAdd(((void*)0), 1, (LPBYTE)&usri, ((void*)0));
    if (ret == NERR_Success || ret == NERR_UserExists)
    {



        trace("We are on NT4, we have to delete the user with the too long username\n");
        ret = pNetUserDel(((void*)0), sTooLongName);
        ok(ret == NERR_Success, "Deleting the user failed : %d\n", ret);
    }
    else if (ret == ERROR_ACCESS_DENIED)
    {
        skip("not enough permissions to add a user\n");
        return;
    }
    else
        ok(ret == NERR_BadUsername ||
           broken(ret == NERR_PasswordTooShort),
           "Adding user with too long username returned 0x%08x\n", ret);

    usri.usri1_name = sTestUserName;
    usri.usri1_password = sTooLongPassword;

    ret = pNetUserAdd(((void*)0), 1, (LPBYTE)&usri, ((void*)0));
    ok(ret == NERR_PasswordTooShort || ret == ERROR_ACCESS_DENIED ,
       "Adding user with too long password returned 0x%08x\n", ret);

    usri.usri1_name = sTooLongName;
    usri.usri1_password = sTooLongPassword;

    ret = pNetUserAdd(((void*)0), 1, (LPBYTE)&usri, ((void*)0));



    ok(ret == NERR_BadUsername || ret == NERR_PasswordTooShort,
            "Adding user with too long username/password returned 0x%08x\n", ret);

    usri.usri1_name = sTestUserName;
    usri.usri1_password = sTestUserOldPass;

    ret = pNetUserAdd(((void*)0), 5, (LPBYTE)&usri, ((void*)0));
    ok(ret == ERROR_INVALID_LEVEL, "Adding user with level 5 returned 0x%08x\n", ret);

    ret = pNetUserAdd(((void*)0), 1, (LPBYTE)&usri, ((void*)0));
    if(ret == ERROR_ACCESS_DENIED)
    {
        skip("Insufficient permissions to add users. Skipping test.\n");
        return;
    }
    if(ret == NERR_UserExists)
    {
        skip("User already exists, skipping test to not mess up the system\n");
        return;
    }

    ok(ret == NERR_Success ||
       broken(ret == NERR_PasswordTooShort),
       "Adding user failed with error 0x%08x\n", ret);
    if(ret != NERR_Success)
        return;
    ret = pNetUserDel(((void*)0), sTestUserName);
    ok(ret == NERR_Success, "Deleting the user failed.\n");

    ret = pNetUserDel(((void*)0), sTestUserName);
    ok(ret == NERR_UserNotFound, "Deleting a nonexistent user returned 0x%08x\n",ret);
}
