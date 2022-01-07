
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *io_strerror(int err) {
    switch (err) {
        case 129: return ((void*)0);
        case 130: return "closed";
        case 128: return "timeout";
        default: return "unknown error";
    }
}
