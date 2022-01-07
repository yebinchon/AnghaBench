
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_17__ {int type; TYPE_8__* unit; TYPE_9__* object_list; TYPE_9__* subject_list; TYPE_11__* transaction_next; TYPE_1__* transaction_prev; int jobs; } ;
typedef TYPE_2__ Transaction ;
struct TYPE_19__ {TYPE_2__* subject; scalar_t__ matters; } ;
struct TYPE_18__ {int id; } ;
struct TYPE_16__ {TYPE_11__* transaction_next; } ;
struct TYPE_15__ {TYPE_1__* transaction_prev; } ;
typedef TYPE_2__ Job ;


 int assert (TYPE_2__*) ;
 int hashmap_remove_value (int ,TYPE_8__*,TYPE_2__*) ;
 int hashmap_replace (int ,TYPE_8__*,TYPE_11__*) ;
 int job_dependency_free (TYPE_9__*) ;
 int job_type_to_string (int ) ;
 int log_unit_debug (TYPE_8__*,char*,int ,int ,int ,int ) ;
 int transaction_delete_job (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static void transaction_unlink_job(Transaction *tr, Job *j, bool delete_dependencies) {
        assert(tr);
        assert(j);

        if (j->transaction_prev)
                j->transaction_prev->transaction_next = j->transaction_next;
        else if (j->transaction_next)
                hashmap_replace(tr->jobs, j->unit, j->transaction_next);
        else
                hashmap_remove_value(tr->jobs, j->unit, j);

        if (j->transaction_next)
                j->transaction_next->transaction_prev = j->transaction_prev;

        j->transaction_prev = j->transaction_next = ((void*)0);

        while (j->subject_list)
                job_dependency_free(j->subject_list);

        while (j->object_list) {
                Job *other = j->object_list->matters ? j->object_list->subject : ((void*)0);

                job_dependency_free(j->object_list);

                if (other && delete_dependencies) {
                        log_unit_debug(other->unit,
                                       "Deleting job %s/%s as dependency of job %s/%s",
                                       other->unit->id, job_type_to_string(other->type),
                                       j->unit->id, job_type_to_string(j->type));
                        transaction_delete_job(tr, other, delete_dependencies);
                }
        }
}
