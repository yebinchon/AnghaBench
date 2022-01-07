
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* object; TYPE_1__* subject; } ;
struct TYPE_9__ {int object_list; } ;
struct TYPE_8__ {int subject_list; } ;
typedef TYPE_3__ JobDependency ;


 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 int assert (TYPE_3__*) ;
 int free (TYPE_3__*) ;
 int object ;
 int subject ;

void job_dependency_free(JobDependency *l) {
        assert(l);

        if (l->subject)
                LIST_REMOVE(subject, l->subject->subject_list, l);

        LIST_REMOVE(object, l->object->object_list, l);

        free(l);
}
