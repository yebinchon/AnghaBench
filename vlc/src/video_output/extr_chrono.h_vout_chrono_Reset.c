
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int avg_initial; int shift; } ;
typedef TYPE_1__ vout_chrono_t ;


 int vout_chrono_Clean (TYPE_1__*) ;
 int vout_chrono_Init (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline void vout_chrono_Reset(vout_chrono_t *chrono)
{
    vout_chrono_t ch = *chrono;
    vout_chrono_Clean(chrono);
    vout_chrono_Init(chrono, ch.shift, ch.avg_initial);
}
