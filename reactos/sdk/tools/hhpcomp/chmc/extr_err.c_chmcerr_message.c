
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* msg; } ;


 TYPE_1__ chmc_err ;

const char *chmcerr_message( void ) {
 return chmc_err.msg;
}
