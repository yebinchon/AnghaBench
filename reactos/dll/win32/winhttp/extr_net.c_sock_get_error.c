
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WSAEACCES ;
 int WSAEADDRINUSE ;
 int WSAEADDRNOTAVAIL ;
 int WSAEAFNOSUPPORT ;
 int WSAEALREADY ;
 int WSAEBADF ;
 int WSAECONNABORTED ;
 int WSAECONNREFUSED ;
 int WSAECONNRESET ;
 int WSAEDESTADDRREQ ;
 int WSAEDQUOT ;
 int WSAEFAULT ;
 int WSAEHOSTDOWN ;
 int WSAEHOSTUNREACH ;
 int WSAEINPROGRESS ;
 int WSAEINTR ;
 int WSAEINVAL ;
 int WSAEISCONN ;
 int WSAELOOP ;
 int WSAEMFILE ;
 int WSAEMSGSIZE ;
 int WSAENAMETOOLONG ;
 int WSAENETDOWN ;
 int WSAENETRESET ;
 int WSAENETUNREACH ;
 int WSAENOBUFS ;
 int WSAENOPROTOOPT ;
 int WSAENOTCONN ;
 int WSAENOTEMPTY ;
 int WSAENOTSOCK ;
 int WSAEOPNOTSUPP ;
 int WSAEPFNOSUPPORT ;
 int WSAEPROCLIM ;
 int WSAEPROTONOSUPPORT ;
 int WSAEPROTOTYPE ;
 int WSAEREMOTE ;
 int WSAESHUTDOWN ;
 int WSAESOCKTNOSUPPORT ;
 int WSAESTALE ;
 int WSAETIMEDOUT ;
 int WSAETOOMANYREFS ;
 int WSAEUSERS ;
 int WSAEWOULDBLOCK ;
 int errno ;
 int perror (char*) ;

__attribute__((used)) static int sock_get_error( int err )
{

    switch (err)
    {
        case 157: return WSAEINTR;
        case 167: return WSAEBADF;
        case 141:
        case 172: return WSAEACCES;
        case 161: return WSAEFAULT;
        case 156: return WSAEINVAL;
        case 153: return WSAEMFILE;
        case 128: return WSAEWOULDBLOCK;
        case 158: return WSAEINPROGRESS;
        case 168: return WSAEALREADY;
        case 143: return WSAENOTSOCK;
        case 163: return WSAEDESTADDRREQ;
        case 152: return WSAEMSGSIZE;
        case 136: return WSAEPROTOTYPE;
        case 146: return WSAENOPROTOOPT;
        case 137: return WSAEPROTONOSUPPORT;
        case 133: return WSAESOCKTNOSUPPORT;
        case 142: return WSAEOPNOTSUPP;
        case 140: return WSAEPFNOSUPPORT;
        case 169: return WSAEAFNOSUPPORT;
        case 171: return WSAEADDRINUSE;
        case 170: return WSAEADDRNOTAVAIL;
        case 150: return WSAENETDOWN;
        case 148: return WSAENETUNREACH;
        case 149: return WSAENETRESET;
        case 166: return WSAECONNABORTED;
        case 139:
        case 164: return WSAECONNRESET;
        case 147: return WSAENOBUFS;
        case 155: return WSAEISCONN;
        case 145: return WSAENOTCONN;
        case 134: return WSAESHUTDOWN;
        case 130: return WSAETOOMANYREFS;
        case 131: return WSAETIMEDOUT;
        case 165: return WSAECONNREFUSED;
        case 154: return WSAELOOP;
        case 151: return WSAENAMETOOLONG;
        case 160: return WSAEHOSTDOWN;
        case 159: return WSAEHOSTUNREACH;
        case 144: return WSAENOTEMPTY;

        case 138: return WSAEPROCLIM;


        case 129: return WSAEUSERS;


        case 162: return WSAEDQUOT;


        case 132: return WSAESTALE;


        case 135: return WSAEREMOTE;

    default: errno = err; perror( "sock_set_error" ); return WSAEFAULT;
    }

    return err;
}
