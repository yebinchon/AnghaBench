
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_ENTROPY_CODING ;


 int ENCOD_2EB ;
 int ENCOD_3EB ;
 int ENCOD_UNKNOWN ;
 scalar_t__ strncmp (char*,char*,int) ;

OPJ_ENTROPY_CODING give_coding(char coding[3])
{

    if (strncmp(coding, "2EB", 3) == 0) {
        return ENCOD_2EB;
    }
    if (strncmp(coding, "3EB", 3) == 0) {
        return ENCOD_3EB;
    }







    return ENCOD_UNKNOWN;
}
