
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** STRV_MAKE (char*,char*,char*,char*,char const*) ;
 int log_error_errno (int,char*) ;
 int spawn_child (char*,char**) ;

__attribute__((used)) static int spawn_curl(const char* url) {
        char **argv = STRV_MAKE("curl",
                                "-HAccept: application/vnd.fdo.journal",
                                "--silent",
                                "--show-error",
                                url);
        int r;

        r = spawn_child("curl", argv);
        if (r < 0)
                log_error_errno(r, "Failed to spawn curl: %m");
        return r;
}
