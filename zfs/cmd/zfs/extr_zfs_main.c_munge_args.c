
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 int B_FALSE ;
 int allow_usage (scalar_t__,int ,int ) ;
 int gettext (char*) ;

__attribute__((used)) static inline const char *
munge_args(int argc, char **argv, boolean_t un, size_t expected_argc,
    char **permsp)
{
 if (un && argc == expected_argc - 1)
  *permsp = ((void*)0);
 else if (argc == expected_argc)
  *permsp = argv[argc - 2];
 else
  allow_usage(un, B_FALSE,
      gettext("wrong number of parameters\n"));

 return (argv[argc - 1]);
}
