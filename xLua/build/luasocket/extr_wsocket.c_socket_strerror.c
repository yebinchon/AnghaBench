
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* io_strerror (int) ;
 char const* wstrerror (int) ;

const char *socket_strerror(int err) {
    if (err <= 0) return io_strerror(err);
    switch (err) {
        case 133: return "address already in use";
        case 131: return "connection refused";
        case 129: return "already connected";
        case 134: return "permission denied";
        case 132: return "closed";
        case 130: return "closed";
        case 128: return "timeout";
        default: return wstrerror(err);
    }
}
