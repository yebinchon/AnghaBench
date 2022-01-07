
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STR_IN_SET (char const*,char*,char*,char*) ;

__attribute__((used)) static bool service_family_is_valid(const char *s) {
        return STR_IN_SET(s, "tcp", "udp", "sctp");
}
