
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int ns; } ;
typedef TYPE_1__ nstime_t ;


 int assert (int) ;

uint64_t
nstime_divide(const nstime_t *time, const nstime_t *divisor) {
 assert(divisor->ns != 0);

 return time->ns / divisor->ns;
}
