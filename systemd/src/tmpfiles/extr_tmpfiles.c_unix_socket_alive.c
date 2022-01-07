
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ load_unix_sockets () ;
 int set_get (int ,char*) ;
 int unix_sockets ;

__attribute__((used)) static bool unix_socket_alive(const char *fn) {
        assert(fn);

        if (load_unix_sockets() < 0)
                return 1;

        return !!set_get(unix_sockets, (char*) fn);
}
