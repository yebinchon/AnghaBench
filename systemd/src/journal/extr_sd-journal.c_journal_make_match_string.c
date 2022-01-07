
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int level0; } ;
typedef TYPE_1__ sd_journal ;


 int assert (TYPE_1__*) ;
 char* match_make_string (int ) ;

char *journal_make_match_string(sd_journal *j) {
        assert(j);

        return match_make_string(j->level0);
}
