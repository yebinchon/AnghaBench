
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int id; int irreversible; int state; int type; TYPE_1__* unit; } ;
struct TYPE_9__ {char* id; } ;
typedef TYPE_2__ Job ;
typedef TYPE_2__ FILE ;


 int assert (TYPE_2__*) ;
 int fprintf (TYPE_2__*,char*,char const*,int,char const*,char*,char*,char const*,char*,char const*,char*,char const*,char*) ;
 int job_may_gc (TYPE_2__*) ;
 char* job_state_to_string (int ) ;
 char* job_type_to_string (int ) ;
 char* strempty (char const*) ;
 char* yes_no (int ) ;

void job_dump(Job *j, FILE *f, const char *prefix) {
        assert(j);
        assert(f);

        prefix = strempty(prefix);

        fprintf(f,
                "%s-> Job %u:\n"
                "%s\tAction: %s -> %s\n"
                "%s\tState: %s\n"
                "%s\tIrreversible: %s\n"
                "%s\tMay GC: %s\n",
                prefix, j->id,
                prefix, j->unit->id, job_type_to_string(j->type),
                prefix, job_state_to_string(j->state),
                prefix, yes_no(j->irreversible),
                prefix, yes_no(job_may_gc(j)));
}
