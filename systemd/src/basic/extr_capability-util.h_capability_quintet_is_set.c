
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ effective; scalar_t__ bounding; scalar_t__ inheritable; scalar_t__ permitted; scalar_t__ ambient; } ;
typedef TYPE_1__ CapabilityQuintet ;



__attribute__((used)) static inline bool capability_quintet_is_set(const CapabilityQuintet *q) {
        return q->effective != (uint64_t) -1 ||
                q->bounding != (uint64_t) -1 ||
                q->inheritable != (uint64_t) -1 ||
                q->permitted != (uint64_t) -1 ||
                q->ambient != (uint64_t) -1;
}
