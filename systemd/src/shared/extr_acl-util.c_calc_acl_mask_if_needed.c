
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acl_tag_t ;
typedef int acl_t ;
typedef int acl_entry_t ;


 int ACL_FIRST_ENTRY ;
 int ACL_GROUP ;
 scalar_t__ ACL_MASK ;
 int ACL_NEXT_ENTRY ;
 int ACL_USER ;
 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 scalar_t__ acl_calc_mask (int *) ;
 int acl_get_entry (int ,int ,int *) ;
 scalar_t__ acl_get_tag_type (int ,scalar_t__*) ;
 int assert (int *) ;
 int errno ;

int calc_acl_mask_if_needed(acl_t *acl_p) {
        acl_entry_t i;
        int r;
        bool need = 0;

        assert(acl_p);

        for (r = acl_get_entry(*acl_p, ACL_FIRST_ENTRY, &i);
             r > 0;
             r = acl_get_entry(*acl_p, ACL_NEXT_ENTRY, &i)) {
                acl_tag_t tag;

                if (acl_get_tag_type(i, &tag) < 0)
                        return -errno;

                if (tag == ACL_MASK)
                        return 0;

                if (IN_SET(tag, ACL_USER, ACL_GROUP))
                        need = 1;
        }
        if (r < 0)
                return -errno;

        if (need && acl_calc_mask(acl_p) < 0)
                return -errno;

        return need;
}
