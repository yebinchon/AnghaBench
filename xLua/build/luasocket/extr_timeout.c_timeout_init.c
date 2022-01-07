
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* p_timeout ;
struct TYPE_3__ {double block; double total; } ;



void timeout_init(p_timeout tm, double block, double total) {
    tm->block = block;
    tm->total = total;
}
