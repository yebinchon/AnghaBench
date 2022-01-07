
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* io_strerror (int) ;
 char const* wstrerror (int) ;

const char *socket_hoststrerror(int err) {
    if (err <= 0) return io_strerror(err);
    switch (err) {
        case 128: return "host not found";
        default: return wstrerror(err);
    }
}
