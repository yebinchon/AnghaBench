
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int monotonic; int realtime; } ;
typedef TYPE_1__ dual_timestamp ;
struct TYPE_14__ {TYPE_1__* timestamps; } ;
typedef scalar_t__ ManagerTimestamp ;
typedef TYPE_2__ Manager ;
typedef TYPE_2__ FILE ;


 int CONST_MAX (int ,int ) ;
 int FORMAT_TIMESPAN_MAX ;
 int FORMAT_TIMESTAMP_MAX ;
 scalar_t__ _MANAGER_TIMESTAMP_MAX ;
 int assert (TYPE_2__*) ;
 scalar_t__ dual_timestamp_is_set (TYPE_1__ const*) ;
 char* format_timespan (char*,int,int ,int) ;
 char* format_timestamp (char*,int,int ) ;
 int fprintf (TYPE_2__*,char*,char*,char*,char*) ;
 int manager_dump_jobs (TYPE_2__*,TYPE_2__*,char const*) ;
 int manager_dump_units (TYPE_2__*,TYPE_2__*,char const*) ;
 char* manager_timestamp_to_string (scalar_t__) ;
 char* strempty (char const*) ;
 scalar_t__ timestamp_is_set (int ) ;

void manager_dump(Manager *m, FILE *f, const char *prefix) {
        ManagerTimestamp q;

        assert(m);
        assert(f);

        for (q = 0; q < _MANAGER_TIMESTAMP_MAX; q++) {
                const dual_timestamp *t = m->timestamps + q;
                char buf[CONST_MAX(FORMAT_TIMESPAN_MAX, FORMAT_TIMESTAMP_MAX)];

                if (dual_timestamp_is_set(t))
                        fprintf(f, "%sTimestamp %s: %s\n",
                                strempty(prefix),
                                manager_timestamp_to_string(q),
                                timestamp_is_set(t->realtime) ? format_timestamp(buf, sizeof buf, t->realtime) :
                                                                format_timespan(buf, sizeof buf, t->monotonic, 1));
        }

        manager_dump_units(m, f, prefix);
        manager_dump_jobs(m, f, prefix);
}
