
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int basename (char const*) ;
 scalar_t__ errno ;
 int log_error_errno (scalar_t__,char*,char const*) ;
 int mkdir_parents_label (char const*,int) ;
 scalar_t__ path_is_absolute (char const*) ;
 char const* strjoina (char const*,char const*,...) ;
 scalar_t__ symlink (char const*,char const*) ;

int generator_add_symlink(const char *dir, const char *dst, const char *dep_type, const char *src) {



        const char *from, *to;

        from = path_is_absolute(src) ? src : strjoina("../", src);
        to = strjoina(dir, "/", dst, ".", dep_type, "/", basename(src));

        mkdir_parents_label(to, 0755);
        if (symlink(from, to) < 0)
                if (errno != EEXIST)
                        return log_error_errno(errno, "Failed to create symlink \"%s\": %m", to);

        return 0;
}
