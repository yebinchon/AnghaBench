
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int description; } ;
typedef TYPE_1__ VarlinkServer ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int free_and_strdup (int *,char const*) ;

int varlink_server_set_description(VarlinkServer *s, const char *description) {
        assert_return(s, -EINVAL);

        return free_and_strdup(&s->description, description);
}
