
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int LOGE (char*,...) ;
 long strtol (char*,char**,int ) ;

__attribute__((used)) static bool
parse_port(char *optarg, uint16_t *port) {
    char *endptr;
    if (*optarg == '\0') {
        LOGE("Invalid port parameter is empty");
        return 0;
    }
    long value = strtol(optarg, &endptr, 0);
    if (*endptr != '\0') {
        LOGE("Invalid port: %s", optarg);
        return 0;
    }
    if (value & ~0xffff) {
        LOGE("Port out of range: %ld", value);
        return 0;
    }

    *port = (uint16_t) value;
    return 1;
}
