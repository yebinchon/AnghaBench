
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_PROG_ORDER ;


 int CPRL ;
 int LRCP ;
 int PCRL ;
 int PROG_UNKNOWN ;
 int RLCP ;
 int RPCL ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static OPJ_PROG_ORDER give_progression(const char progression[4])
{
    if (strncmp(progression, "LRCP", 4) == 0) {
        return LRCP;
    }
    if (strncmp(progression, "RLCP", 4) == 0) {
        return RLCP;
    }
    if (strncmp(progression, "RPCL", 4) == 0) {
        return RPCL;
    }
    if (strncmp(progression, "PCRL", 4) == 0) {
        return PCRL;
    }
    if (strncmp(progression, "CPRL", 4) == 0) {
        return CPRL;
    }

    return PROG_UNKNOWN;
}
