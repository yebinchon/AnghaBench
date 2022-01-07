
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_journal ;


 scalar_t__ arg_field ;
 int assert (int *) ;
 int print_field (int ,int *) ;
 int print_info (int ,int *,unsigned int) ;
 int print_list (int ,int *,unsigned int) ;
 int stdout ;

__attribute__((used)) static int print_entry(sd_journal *j, unsigned n_found, bool verb_is_info) {
        assert(j);

        if (verb_is_info)
                return print_info(stdout, j, n_found);
        else if (arg_field)
                return print_field(stdout, j);
        else
                return print_list(stdout, j, n_found);
}
