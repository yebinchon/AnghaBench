
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int assert (char const*) ;
 int binary_is_good (char const*) ;
 scalar_t__ streq (char const*,char*) ;
 char* strjoina (char*,char const*) ;

int fsck_exists(const char *fstype) {
        const char *checker;

        assert(fstype);

        if (streq(fstype, "auto"))
                return -EINVAL;

        checker = strjoina("fsck.", fstype);
        return binary_is_good(checker);
}
