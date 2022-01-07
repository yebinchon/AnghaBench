
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int description; } ;
typedef TYPE_1__ Varlink ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int free_and_strdup (int *,char const*) ;

int varlink_set_description(Varlink *v, const char *description) {
        assert_return(v, -EINVAL);

        return free_and_strdup(&v->description, description);
}
