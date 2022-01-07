
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int write_dependency (int *,char const*,char*,char*) ;

__attribute__((used)) static int write_after(FILE *f, const char *opts) {
        return write_dependency(f, opts, "x-systemd.after", "After=%1$s\n");
}
