
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UdevRuleToken ;


 int free (int *) ;

__attribute__((used)) static void udev_rule_token_free(UdevRuleToken *token) {
        free(token);
}
