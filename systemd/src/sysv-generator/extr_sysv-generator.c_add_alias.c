
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int arg_dest ;
 int assert (char const*) ;
 int errno ;
 char* prefix_roota (int ,char const*) ;
 int symlink (char const*,char const*) ;

__attribute__((used)) static int add_alias(const char *service, const char *alias) {
        const char *link;
        int r;

        assert(service);
        assert(alias);

        link = prefix_roota(arg_dest, alias);

        r = symlink(service, link);
        if (r < 0) {
                if (errno == EEXIST)
                        return 0;

                return -errno;
        }

        return 1;
}
