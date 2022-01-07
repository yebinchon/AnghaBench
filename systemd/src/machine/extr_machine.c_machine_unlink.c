
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* state_file; scalar_t__ unit; } ;
typedef TYPE_1__ Machine ;


 int assert (TYPE_1__*) ;
 char* strjoina (char*,scalar_t__) ;
 int unlink (char*) ;

__attribute__((used)) static void machine_unlink(Machine *m) {
        assert(m);

        if (m->unit) {
                char *sl;

                sl = strjoina("/run/systemd/machines/unit:", m->unit);
                (void) unlink(sl);
        }

        if (m->state_file)
                (void) unlink(m->state_file);
}
