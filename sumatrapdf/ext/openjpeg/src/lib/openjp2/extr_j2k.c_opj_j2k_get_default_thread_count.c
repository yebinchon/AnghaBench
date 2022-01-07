
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 char* getenv (char*) ;
 int opj_get_num_cpus () ;
 int opj_has_thread_support () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int opj_j2k_get_default_thread_count(void)
{
    return 0;

}
