
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ getpid_cached () ;
 scalar_t__ parse_pid (char const*,scalar_t__*) ;
 int program_invocation_short_name ;
 scalar_t__ streq (char const*,int ) ;

__attribute__((used)) static bool is_us(const char *identifier, const char *pid) {
        pid_t pid_num;

        if (!identifier || !pid)
                return 0;

        if (parse_pid(pid, &pid_num) < 0)
                return 0;

        return pid_num == getpid_cached() &&
               streq(identifier, program_invocation_short_name);
}
