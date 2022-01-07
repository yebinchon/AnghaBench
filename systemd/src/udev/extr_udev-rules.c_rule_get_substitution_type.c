
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UdevRuleSubstituteType ;


 int SUBST_TYPE_FORMAT ;
 int SUBST_TYPE_PLAIN ;
 int SUBST_TYPE_SUBSYS ;
 int assert (char const*) ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static UdevRuleSubstituteType rule_get_substitution_type(const char *str) {
        assert(str);

        if (str[0] == '[')
                return SUBST_TYPE_SUBSYS;
        if (strchr(str, '%') || strchr(str, '$'))
                return SUBST_TYPE_FORMAT;
        return SUBST_TYPE_PLAIN;
}
