
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AskPasswordFlags ;


 int add_to_keyring (char const*,int ,char**) ;
 int assert (char const*) ;
 int log_debug_errno (int,char*) ;

__attribute__((used)) static int add_to_keyring_and_log(const char *keyname, AskPasswordFlags flags, char **passwords) {
        int r;

        assert(keyname);

        r = add_to_keyring(keyname, flags, passwords);
        if (r < 0)
                return log_debug_errno(r, "Failed to add password to keyring: %m");

        return 0;
}
