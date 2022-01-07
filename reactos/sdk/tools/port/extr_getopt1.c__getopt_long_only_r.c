
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;
struct _getopt_data {int dummy; } ;


 int _getopt_internal_r (int,char**,char const*,struct option const*,int*,int,struct _getopt_data*,int ) ;

int
_getopt_long_only_r (int argc, char **argv, const char *options,
       const struct option *long_options, int *opt_index,
       struct _getopt_data *d)
{
  return _getopt_internal_r (argc, argv, options, long_options, opt_index,
        1, d, 0);
}
