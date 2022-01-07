
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VALIDATE_SECPAR (unsigned int) ;

size_t FSPRG_mskinbytes(unsigned _secpar) {
        VALIDATE_SECPAR(_secpar);
        return 2 + 2 * (_secpar / 2) / 8;
}
