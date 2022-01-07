
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_14__ {scalar_t__ type; } ;
struct TYPE_16__ {scalar_t__ location_type; scalar_t__ last_n_entries; scalar_t__ current_offset; TYPE_12__ current_location; int last_direction; TYPE_1__* header; } ;
typedef TYPE_2__ sd_journal ;
typedef int direction_t ;
struct TYPE_15__ {int n_entries; } ;
typedef int Object ;
typedef TYPE_2__ JournalFile ;


 int DIRECTION_DOWN ;
 scalar_t__ LOCATION_DISCRETE ;
 scalar_t__ LOCATION_SEEK ;
 scalar_t__ LOCATION_TAIL ;
 int assert (TYPE_2__*) ;
 int compare_with_location (TYPE_2__*,TYPE_12__*) ;
 int find_location_with_matches (TYPE_2__*,TYPE_2__*,int ,int **,scalar_t__*) ;
 int journal_file_save_location (TYPE_2__*,int *,scalar_t__) ;
 scalar_t__ le64toh (int ) ;
 int next_with_matches (TYPE_2__*,TYPE_2__*,int ,int **,scalar_t__*) ;

__attribute__((used)) static int next_beyond_location(sd_journal *j, JournalFile *f, direction_t direction) {
        Object *c;
        uint64_t cp, n_entries;
        int r;

        assert(j);
        assert(f);

        n_entries = le64toh(f->header->n_entries);



        if (f->last_direction == direction && f->location_type == LOCATION_TAIL &&
            n_entries == f->last_n_entries)
                return 0;

        f->last_n_entries = n_entries;

        if (f->last_direction == direction && f->current_offset > 0) {



                if (f->location_type != LOCATION_SEEK) {
                        r = next_with_matches(j, f, direction, &c, &cp);
                        if (r <= 0)
                                return r;

                        journal_file_save_location(f, c, cp);
                }
        } else {
                f->last_direction = direction;

                r = find_location_with_matches(j, f, direction, &c, &cp);
                if (r <= 0)
                        return r;

                journal_file_save_location(f, c, cp);
        }







        for (;;) {
                bool found;

                if (j->current_location.type == LOCATION_DISCRETE) {
                        int k;

                        k = compare_with_location(f, &j->current_location);

                        found = direction == DIRECTION_DOWN ? k > 0 : k < 0;
                } else
                        found = 1;

                if (found)
                        return 1;

                r = next_with_matches(j, f, direction, &c, &cp);
                if (r <= 0)
                        return r;

                journal_file_save_location(f, c, cp);
        }
}
