
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int EINVAL ;
 int parse_uid (char const*,int *) ;
 char* startswith (char const*,char*) ;
 char* strchr (char const*,char) ;
 char* strndupa (char const*,int) ;

__attribute__((used)) static int uid_from_file_name(const char *filename, uid_t *uid) {
        const char *p, *e, *u;

        p = startswith(filename, "core.");
        if (!p)
                return -EINVAL;


        p = strchr(p, '.');
        if (!p)
                return -EINVAL;
        p++;


        e = strchr(p, '.');
        if (!e)
                return -EINVAL;

        u = strndupa(p, e-p);
        return parse_uid(u, uid);
}
