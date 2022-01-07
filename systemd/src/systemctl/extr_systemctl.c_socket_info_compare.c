
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int type; int path; scalar_t__ machine; } ;


 int assert (struct socket_info const*) ;
 int strcasecmp (scalar_t__,scalar_t__) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int socket_info_compare(const struct socket_info *a, const struct socket_info *b) {
        int r;

        assert(a);
        assert(b);

        if (!a->machine && b->machine)
                return -1;
        if (a->machine && !b->machine)
                return 1;
        if (a->machine && b->machine) {
                r = strcasecmp(a->machine, b->machine);
                if (r != 0)
                        return r;
        }

        r = strcmp(a->path, b->path);
        if (r == 0)
                r = strcmp(a->type, b->type);

        return r;
}
