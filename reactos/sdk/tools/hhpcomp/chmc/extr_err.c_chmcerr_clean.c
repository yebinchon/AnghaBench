
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* msg; int code; } ;


 int CHMC_NOERR ;
 TYPE_1__ chmc_err ;

void chmcerr_clean(void) {
 chmc_err.code = CHMC_NOERR;
 chmc_err.msg[0] = '\0';
}
