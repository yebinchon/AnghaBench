
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FormatSubstitutionType ;


 int EINVAL ;
 int FORMAT_SUBST_ATTR ;
 int FORMAT_SUBST_ENV ;
 scalar_t__ FORMAT_SUBST_RESULT ;
 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 int UTIL_PATH_SIZE ;
 int get_subst_type (char const**,int,scalar_t__*,char*) ;
 scalar_t__ isempty (char*) ;
 int safe_atou_optional_plus (char*,unsigned int*) ;

int udev_check_format(const char *value, size_t *offset, const char **hint) {
        FormatSubstitutionType type;
        const char *s = value;
        char attr[UTIL_PATH_SIZE];
        int r;

        while (*s) {
                r = get_subst_type(&s, 1, &type, attr);
                if (r < 0) {
                        if (offset)
                                *offset = s - value;
                        if (hint)
                                *hint = "invalid substitution type";
                        return r;
                } else if (r == 0) {
                        s++;
                        continue;
                }

                if (IN_SET(type, FORMAT_SUBST_ATTR, FORMAT_SUBST_ENV) && isempty(attr)) {
                        if (offset)
                                *offset = s - value;
                        if (hint)
                                *hint = "attribute value missing";
                        return -EINVAL;
                }

                if (type == FORMAT_SUBST_RESULT && !isempty(attr)) {
                        unsigned i;

                        r = safe_atou_optional_plus(attr, &i);
                        if (r < 0) {
                                if (offset)
                                        *offset = s - value;
                                if (hint)
                                        *hint = "attribute value not a valid number";
                                return r;
                        }
                }
        }

        return 0;
}
