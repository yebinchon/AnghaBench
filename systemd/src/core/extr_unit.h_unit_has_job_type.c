
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* job; } ;
typedef TYPE_2__ Unit ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef scalar_t__ JobType ;



__attribute__((used)) static inline bool unit_has_job_type(Unit *u, JobType type) {
        return u && u->job && u->job->type == type;
}
