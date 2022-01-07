
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ begin; scalar_t__ num; } ;
typedef TYPE_1__ RateLimit ;



__attribute__((used)) static inline void ratelimit_reset(RateLimit *rl) {
        rl->num = rl->begin = 0;
}
