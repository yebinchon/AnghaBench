
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *dhcp_type(int type) {
        switch(type) {
        case 132:
                return "DHCPDISCOVER";
        case 130:
                return "DHCPOFFER";
        case 128:
                return "DHCPREQUEST";
        case 133:
                return "DHCPDECLINE";
        case 134:
                return "DHCPACK";
        case 131:
                return "DHCPNAK";
        case 129:
                return "DHCPRELEASE";
        default:
                return "unknown";
        }
}
