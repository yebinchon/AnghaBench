
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_journal ;


 int SD_JOURNAL_LOCAL_ONLY ;
 char* arg_directory ;
 scalar_t__ arg_file ;
 scalar_t__ arg_journal_type ;
 scalar_t__ arg_machine ;
 int arg_merge ;
 int log_error_errno (int,char*,char*) ;
 int sd_journal_open (int **,scalar_t__) ;
 int sd_journal_open_container (int **,scalar_t__,int ) ;
 int sd_journal_open_directory (int **,char*,scalar_t__) ;
 int sd_journal_open_files (int **,char const**,int ) ;

__attribute__((used)) static int open_journal(sd_journal **j) {
        int r;

        if (arg_directory)
                r = sd_journal_open_directory(j, arg_directory, arg_journal_type);
        else if (arg_file)
                r = sd_journal_open_files(j, (const char**) arg_file, 0);
        else if (arg_machine)
                r = sd_journal_open_container(j, arg_machine, 0);
        else
                r = sd_journal_open(j, !arg_merge*SD_JOURNAL_LOCAL_ONLY + arg_journal_type);
        if (r < 0)
                log_error_errno(r, "Failed to open %s: %m",
                                arg_directory ? arg_directory : arg_file ? "files" : "journal");
        return r;
}
