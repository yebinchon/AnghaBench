
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPROTONOSUPPORT ;
 int IN_SET (int,int ,int ) ;
 int IPPROTO_SCTP ;
 int IPPROTO_UDPLITE ;
 int parse_ip_protocol (char const*) ;

__attribute__((used)) static int parse_socket_protocol(const char *s) {
        int r;

        r = parse_ip_protocol(s);
        if (r < 0)
                return r;
        if (!IN_SET(r, IPPROTO_UDPLITE, IPPROTO_SCTP))
                return -EPROTONOSUPPORT;

        return r;
}
