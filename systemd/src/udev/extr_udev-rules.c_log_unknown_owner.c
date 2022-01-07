
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;
typedef int UdevRules ;


 int ENOENT ;
 int ESRCH ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int abs (int) ;
 int log_rule_error (int *,int *,char*,char const*,char const*) ;
 int log_rule_error_errno (int *,int *,int,char*,char const*,char const*) ;

__attribute__((used)) static void log_unknown_owner(sd_device *dev, UdevRules *rules, int error, const char *entity, const char *name) {
        if (IN_SET(abs(error), ENOENT, ESRCH))
                log_rule_error(dev, rules, "Unknown %s '%s', ignoring", entity, name);
        else
                log_rule_error_errno(dev, rules, error, "Failed to resolve %s '%s', ignoring: %m", entity, name);
}
