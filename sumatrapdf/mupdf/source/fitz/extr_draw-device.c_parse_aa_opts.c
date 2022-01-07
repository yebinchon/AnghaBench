
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_atoi (char const*) ;
 int fz_clampi (int ,int ,int) ;
 scalar_t__ fz_option_eq (char const*,char*) ;

__attribute__((used)) static int parse_aa_opts(const char *val)
{
 if (fz_option_eq(val, "cop"))
  return 9;
 if (fz_option_eq(val, "app"))
  return 10;
 if (val[0] == 'a' && val[1] == 'a' && val[2] >= '0' && val[2] <= '9')
  return fz_clampi(fz_atoi(&val[2]), 0, 8);
 return 8;
}
