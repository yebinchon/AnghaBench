
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 int IN_SET (scalar_t__,int ,int ) ;
 scalar_t__ IPPROTO_IP ;
 int IPPROTO_SCTP ;
 int IPPROTO_UDPLITE ;
 char const* ip_protocol_to_name (scalar_t__) ;

__attribute__((used)) static const char* socket_protocol_to_string(int32_t i) {
        if (i == IPPROTO_IP)
                return "";

        if (!IN_SET(i, IPPROTO_UDPLITE, IPPROTO_SCTP))
                return ((void*)0);

        return ip_protocol_to_name(i);
}
