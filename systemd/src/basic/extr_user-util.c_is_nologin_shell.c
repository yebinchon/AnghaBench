
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_IN_SET (char const*,char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static bool is_nologin_shell(const char *shell) {

        return PATH_IN_SET(shell,



                           "/bin/nologin",
                           "/sbin/nologin",
                           "/usr/bin/nologin",
                           "/usr/sbin/nologin",



                           "/bin/false",
                           "/usr/bin/false",
                           "/bin/true",
                           "/usr/bin/true");
}
