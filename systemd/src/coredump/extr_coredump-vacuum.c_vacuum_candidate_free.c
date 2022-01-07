
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacuum_candidate {struct vacuum_candidate* oldest_file; } ;


 int free (struct vacuum_candidate*) ;

__attribute__((used)) static void vacuum_candidate_free(struct vacuum_candidate *c) {
        if (!c)
                return;

        free(c->oldest_file);
        free(c);
}
