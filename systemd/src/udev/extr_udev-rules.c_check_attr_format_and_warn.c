
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UdevRules ;


 scalar_t__ isempty (char const*) ;
 int log_token_invalid_attr (int *,char const*) ;
 int log_token_invalid_attr_format (int *,char const*,char const*,size_t,char const*) ;
 scalar_t__ udev_check_format (char const*,size_t*,char const**) ;

__attribute__((used)) static int check_attr_format_and_warn(UdevRules *rules, const char *key, const char *value) {
        size_t offset;
        const char *hint;

        if (isempty(value))
                return log_token_invalid_attr(rules, key);
        if (udev_check_format(value, &offset, &hint) < 0)
                log_token_invalid_attr_format(rules, key, value, offset + 1, hint);
        return 0;
}
