
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ COREDUMP_STORAGE_EXTERNAL ;
 scalar_t__ COREDUMP_STORAGE_JOURNAL ;
 scalar_t__ COREDUMP_STORAGE_NONE ;
 int arg_external_size_max ;
 int arg_journal_size_max ;
 scalar_t__ arg_storage ;
 int assert (int) ;

__attribute__((used)) static uint64_t storage_size_max(void) {
        if (arg_storage == COREDUMP_STORAGE_EXTERNAL)
                return arg_external_size_max;
        if (arg_storage == COREDUMP_STORAGE_JOURNAL)
                return arg_journal_size_max;
        assert(arg_storage == COREDUMP_STORAGE_NONE);
        return 0;
}
