
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *coredump_tmpfile_name(const char *s) {
        return s ? s : "(unnamed temporary file)";
}
