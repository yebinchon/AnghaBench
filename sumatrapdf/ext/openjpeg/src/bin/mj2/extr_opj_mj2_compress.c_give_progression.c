
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

__attribute__((used)) static OPJ_PROG_ORDER give_progression(const char progression[5])
{
    if (progression[0] == 'L' && progression[1] == 'R'
            && progression[2] == 'C' && progression[3] == 'P') {
        return LRCP;
    } else {
        if (progression[0] == 'R' && progression[1] == 'L'
                && progression[2] == 'C' && progression[3] == 'P') {
            return RLCP;
        } else {
            if (progression[0] == 'R' && progression[1] == 'P'
                    && progression[2] == 'C' && progression[3] == 'L') {
                return RPCL;
            } else {
                if (progression[0] == 'P' && progression[1] == 'C'
                        && progression[2] == 'R' && progression[3] == 'L') {
                    return PCRL;
                } else {
                    if (progression[0] == 'C' && progression[1] == 'P'
                            && progression[2] == 'R' && progression[3] == 'L') {
                        return CPRL;
                    } else {
                        return PROG_UNKNOWN;
                    }
                }
            }
        }
    }
}
