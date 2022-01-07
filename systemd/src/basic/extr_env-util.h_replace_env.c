
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* replace_env_n (char const*,int ,char**,unsigned int) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *replace_env(const char *format, char **env, unsigned flags) {
        return replace_env_n(format, strlen(format), env, flags);
}
