
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ COREDUMP_STORAGE_EXTERNAL ;
 scalar_t__ ENOENT ;
 scalar_t__ arg_external_size_max ;
 scalar_t__ arg_storage ;
 scalar_t__ errno ;
 int log_error_errno (scalar_t__,char*,char const*) ;
 scalar_t__ unlink (char const*) ;

__attribute__((used)) static int maybe_remove_external_coredump(const char *filename, uint64_t size) {



        if (arg_storage == COREDUMP_STORAGE_EXTERNAL &&
            size <= arg_external_size_max)
                return 0;

        if (!filename)
                return 1;

        if (unlink(filename) < 0 && errno != ENOENT)
                return log_error_errno(errno, "Failed to unlink %s: %m", filename);

        return 1;
}
