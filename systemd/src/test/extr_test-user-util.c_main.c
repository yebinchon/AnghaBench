
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_NOBODY ;
 char* NOBODY_GROUP_NAME ;
 char* NOBODY_USER_NAME ;
 char* NOLOGIN ;
 int TTY_GID ;
 int UID_NOBODY ;
 int test_get_group_creds_one (char*,char*,int) ;
 int test_get_user_creds_one (char*,char*,int,int,char*,char*) ;
 int test_gid_to_name_one (int,char*) ;
 int test_in_gid () ;
 int test_make_salt () ;
 int test_parse_uid () ;
 int test_uid_ptr () ;
 int test_uid_to_name_one (int,char*) ;
 int test_valid_gecos () ;
 int test_valid_home () ;
 int test_valid_user_group_name () ;
 int test_valid_user_group_name_compat () ;
 int test_valid_user_group_name_or_id () ;
 int test_valid_user_group_name_or_id_compat () ;

int main(int argc, char *argv[]) {
        test_uid_to_name_one(0, "root");
        test_uid_to_name_one(UID_NOBODY, NOBODY_USER_NAME);
        test_uid_to_name_one(0xFFFF, "65535");
        test_uid_to_name_one(0xFFFFFFFF, "4294967295");

        test_gid_to_name_one(0, "root");
        test_gid_to_name_one(GID_NOBODY, NOBODY_GROUP_NAME);
        test_gid_to_name_one(TTY_GID, "tty");
        test_gid_to_name_one(0xFFFF, "65535");
        test_gid_to_name_one(0xFFFFFFFF, "4294967295");

        test_get_user_creds_one("root", "root", 0, 0, "/root", "/bin/sh");
        test_get_user_creds_one("0", "root", 0, 0, "/root", "/bin/sh");
        test_get_user_creds_one(NOBODY_USER_NAME, NOBODY_USER_NAME, UID_NOBODY, GID_NOBODY, "/", NOLOGIN);
        test_get_user_creds_one("65534", NOBODY_USER_NAME, UID_NOBODY, GID_NOBODY, "/", NOLOGIN);

        test_get_group_creds_one("root", "root", 0);
        test_get_group_creds_one("0", "root", 0);
        test_get_group_creds_one(NOBODY_GROUP_NAME, NOBODY_GROUP_NAME, GID_NOBODY);
        test_get_group_creds_one("65534", NOBODY_GROUP_NAME, GID_NOBODY);

        test_parse_uid();
        test_uid_ptr();

        test_valid_user_group_name_compat();
        test_valid_user_group_name();
        test_valid_user_group_name_or_id_compat();
        test_valid_user_group_name_or_id();
        test_valid_gecos();
        test_valid_home();

        test_make_salt();

        test_in_gid();

        return 0;
}
