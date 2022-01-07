
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_journal ;


 int STRLEN (char*) ;
 int arg_dmesg ;
 int assert (int *) ;
 int log_error_errno (int,char*) ;
 int sd_journal_add_conjunction (int *) ;
 int sd_journal_add_match (int *,char*,int ) ;

__attribute__((used)) static int add_dmesg(sd_journal *j) {
        int r;
        assert(j);

        if (!arg_dmesg)
                return 0;

        r = sd_journal_add_match(j, "_TRANSPORT=kernel",
                                 STRLEN("_TRANSPORT=kernel"));
        if (r < 0)
                return log_error_errno(r, "Failed to add match: %m");

        r = sd_journal_add_conjunction(j);
        if (r < 0)
                return log_error_errno(r, "Failed to add conjunction: %m");

        return 0;
}
