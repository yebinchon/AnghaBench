
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct security_info {int user; scalar_t__ dynamic_user; } ;


 scalar_t__ STRPTR_IN_SET (int ,char*,char*) ;
 int assert (struct security_info const*) ;
 int isempty (int ) ;

__attribute__((used)) static bool security_info_runs_privileged(const struct security_info *i) {
        assert(i);

        if (STRPTR_IN_SET(i->user, "0", "root"))
                return 1;

        if (i->dynamic_user)
                return 0;

        return isempty(i->user);
}
