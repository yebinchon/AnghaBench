
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECONNABORTED ;
 int ECONNREFUSED ;
 int ECONNRESET ;
 int EHOSTDOWN ;
 int EHOSTUNREACH ;
 int ENETDOWN ;
 int ENETRESET ;
 int ENETUNREACH ;
 int ENONET ;
 int ENOPROTOOPT ;
 int ENOTCONN ;
 int EPIPE ;
 int EPROTO ;
 int ESHUTDOWN ;
 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int abs (int) ;

__attribute__((used)) static inline bool ERRNO_IS_DISCONNECT(int r) {
        return IN_SET(abs(r),
                      ECONNABORTED,
                      ECONNREFUSED,
                      ECONNRESET,
                      EHOSTDOWN,
                      EHOSTUNREACH,
                      ENETDOWN,
                      ENETRESET,
                      ENETUNREACH,
                      ENONET,
                      ENOPROTOOPT,
                      ENOTCONN,
                      EPIPE,
                      EPROTO,
                      ESHUTDOWN);
}
