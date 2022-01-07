
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ acl_tag_t ;
typedef int * acl_t ;
typedef int acl_entry_t ;


 int ACL_FIRST_ENTRY ;
 int ACL_NEXT_ENTRY ;
 scalar_t__ ACL_USER ;
 int acl_free (scalar_t__*) ;
 int acl_get_entry (int *,int ,int *) ;
 scalar_t__* acl_get_qualifier (int ) ;
 scalar_t__ acl_get_tag_type (int ,scalar_t__*) ;
 int assert (int *) ;
 int errno ;

int acl_find_uid(acl_t acl, uid_t uid, acl_entry_t *entry) {
        acl_entry_t i;
        int r;

        assert(acl);
        assert(entry);

        for (r = acl_get_entry(acl, ACL_FIRST_ENTRY, &i);
             r > 0;
             r = acl_get_entry(acl, ACL_NEXT_ENTRY, &i)) {

                acl_tag_t tag;
                uid_t *u;
                bool b;

                if (acl_get_tag_type(i, &tag) < 0)
                        return -errno;

                if (tag != ACL_USER)
                        continue;

                u = acl_get_qualifier(i);
                if (!u)
                        return -errno;

                b = *u == uid;
                acl_free(u);

                if (b) {
                        *entry = i;
                        return 1;
                }
        }
        if (r < 0)
                return -errno;

        return 0;
}
