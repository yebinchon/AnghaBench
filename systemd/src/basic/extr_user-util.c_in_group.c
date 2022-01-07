
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int get_group_creds (char const**,int *,int ) ;
 int in_gid (int ) ;

int in_group(const char *name) {
        int r;
        gid_t gid;

        r = get_group_creds(&name, &gid, 0);
        if (r < 0)
                return r;

        return in_gid(gid);
}
