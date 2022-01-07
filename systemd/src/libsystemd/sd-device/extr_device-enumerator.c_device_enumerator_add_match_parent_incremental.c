
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int scan_uptodate; int match_parent; } ;
typedef TYPE_1__ sd_device_enumerator ;
typedef TYPE_1__ sd_device ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int sd_device_get_syspath (TYPE_1__*,char const**) ;
 int set_ensure_allocated (int *,int *) ;
 int set_put_strdup (int ,char const*) ;

int device_enumerator_add_match_parent_incremental(sd_device_enumerator *enumerator, sd_device *parent) {
        const char *path;
        int r;

        assert_return(enumerator, -EINVAL);
        assert_return(parent, -EINVAL);

        r = sd_device_get_syspath(parent, &path);
        if (r < 0)
                return r;

        r = set_ensure_allocated(&enumerator->match_parent, ((void*)0));
        if (r < 0)
                return r;

        r = set_put_strdup(enumerator->match_parent, path);
        if (r < 0)
                return r;

        enumerator->scan_uptodate = 0;

        return 0;
}
