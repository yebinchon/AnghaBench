
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_t ;
typedef int acl_entry_t ;


 int ACL_FIRST_ENTRY ;
 int ACL_NEXT_ENTRY ;
 int acl_entry_equal (int ,int ) ;
 int acl_get_entry (int ,int ,int *) ;
 int errno ;

__attribute__((used)) static int find_acl_entry(acl_t acl, acl_entry_t entry, acl_entry_t *out) {
        acl_entry_t i;
        int r;

        for (r = acl_get_entry(acl, ACL_FIRST_ENTRY, &i);
             r > 0;
             r = acl_get_entry(acl, ACL_NEXT_ENTRY, &i)) {

                r = acl_entry_equal(i, entry);
                if (r < 0)
                        return r;
                if (r > 0) {
                        *out = i;
                        return 1;
                }
        }
        if (r < 0)
                return -errno;
        return 0;
}
