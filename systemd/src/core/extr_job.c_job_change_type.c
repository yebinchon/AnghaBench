
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int type; TYPE_2__* unit; } ;
typedef int JobType ;
typedef TYPE_1__ Job ;


 int assert (TYPE_1__*) ;
 int job_type_to_string (int ) ;
 int log_unit_debug (TYPE_2__*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void job_change_type(Job *j, JobType newtype) {
        assert(j);

        log_unit_debug(j->unit,
                       "Converting job %s/%s -> %s/%s",
                       j->unit->id, job_type_to_string(j->type),
                       j->unit->id, job_type_to_string(newtype));

        j->type = newtype;
}
