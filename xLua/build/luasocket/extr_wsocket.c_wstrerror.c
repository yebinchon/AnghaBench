
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *wstrerror(int err) {
    switch (err) {
        case 155: return "Interrupted function call";
        case 169: return "Permission denied";
        case 159: return "Bad address";
        case 154: return "Invalid argument";
        case 152: return "Too many open files";
        case 135: return "Resource temporarily unavailable";
        case 156: return "Operation now in progress";
        case 165: return "Operation already in progress";
        case 144: return "Socket operation on nonsocket";
        case 161: return "Destination address required";
        case 151: return "Message too long";
        case 139: return "Protocol wrong type for socket";
        case 146: return "Bad protocol option";
        case 140: return "Protocol not supported";
        case 137: return "Socket type not supported";
        case 143: return "Operation not supported";
        case 142: return "Protocol family not supported";
        case 166:
            return "Address family not supported by protocol family";
        case 168: return "Address already in use";
        case 167: return "Cannot assign requested address";
        case 150: return "Network is down";
        case 148: return "Network is unreachable";
        case 149: return "Network dropped connection on reset";
        case 164: return "Software caused connection abort";
        case 162: return "Connection reset by peer";
        case 147: return "No buffer space available";
        case 153: return "Socket is already connected";
        case 145: return "Socket is not connected";
        case 138: return "Cannot send after socket shutdown";
        case 136: return "Connection timed out";
        case 163: return "Connection refused";
        case 158: return "Host is down";
        case 157: return "No route to host";
        case 141: return "Too many processes";
        case 130: return "Network subsystem is unavailable";
        case 128: return "Winsock.dll version out of range";
        case 133:
            return "Successful WSAStartup not yet performed";
        case 160: return "Graceful shutdown in progress";
        case 134: return "Host not found";
        case 129: return "Nonauthoritative host not found";
        case 131: return "Nonrecoverable name lookup error";
        case 132: return "Valid name, no data record of requested type";
        default: return "Unknown error";
    }
}
