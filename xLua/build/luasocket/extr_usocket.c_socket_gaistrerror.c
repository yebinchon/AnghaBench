
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char const* gai_strerror (int) ;
 char const* strerror (int ) ;

const char *socket_gaistrerror(int err) {
    if (err == 0) return ((void*)0);
    switch (err) {
        case 139: return "temporary failure in name resolution";
        case 138: return "invalid value for ai_flags";

        case 137: return "invalid value for hints";

        case 136: return "non-recoverable failure in name resolution";
        case 135: return "ai_family not supported";
        case 134: return "memory allocation failure";
        case 133:
            return "host or service not provided, or not known";
        case 132: return "argument buffer overflow";

        case 131: return "resolved protocol is unknown";

        case 130: return "service not supported for socket type";
        case 129: return "ai_socktype not supported";
        case 128: return strerror(errno);
        default: return gai_strerror(err);
    }
}
