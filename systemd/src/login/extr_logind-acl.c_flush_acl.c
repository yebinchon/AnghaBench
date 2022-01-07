
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acl_tag_t ;
typedef int acl_t ;
typedef int acl_entry_t ;


 int ACL_FIRST_ENTRY ;
 int ACL_NEXT_ENTRY ;
 scalar_t__ ACL_USER ;
 scalar_t__ acl_delete_entry (int ,int ) ;
 int acl_get_entry (int ,int ,int *) ;
 scalar_t__ acl_get_tag_type (int ,scalar_t__*) ;
 int assert (int ) ;
 int errno ;

__attribute__((used)) static int flush_acl(acl_t acl) {
        acl_entry_t i;
        int found;
        bool changed = 0;

        assert(acl);

        for (found = acl_get_entry(acl, ACL_FIRST_ENTRY, &i);
             found > 0;
             found = acl_get_entry(acl, ACL_NEXT_ENTRY, &i)) {

                acl_tag_t tag;

                if (acl_get_tag_type(i, &tag) < 0)
                        return -errno;

                if (tag != ACL_USER)
                        continue;

                if (acl_delete_entry(acl, i) < 0)
                        return -errno;

                changed = 1;
        }

        if (found < 0)
                return -errno;

        return changed;
}
