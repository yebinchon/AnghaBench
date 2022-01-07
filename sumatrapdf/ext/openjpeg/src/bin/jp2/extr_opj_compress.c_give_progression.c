
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_PROG_ORDER ;


 int OPJ_CPRL ;
 int OPJ_LRCP ;
 int OPJ_PCRL ;
 int OPJ_PROG_UNKNOWN ;
 int OPJ_RLCP ;
 int OPJ_RPCL ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static OPJ_PROG_ORDER give_progression(const char progression[4])
{
    if (strncmp(progression, "LRCP", 4) == 0) {
        return OPJ_LRCP;
    }
    if (strncmp(progression, "RLCP", 4) == 0) {
        return OPJ_RLCP;
    }
    if (strncmp(progression, "RPCL", 4) == 0) {
        return OPJ_RPCL;
    }
    if (strncmp(progression, "PCRL", 4) == 0) {
        return OPJ_PCRL;
    }
    if (strncmp(progression, "CPRL", 4) == 0) {
        return OPJ_CPRL;
    }

    return OPJ_PROG_UNKNOWN;
}
