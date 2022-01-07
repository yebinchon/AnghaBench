
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int FLT_MAX ;
 scalar_t__ errno ;
 float fz_clamp (float,int ,int ) ;
 float fz_strtof (char const*,int *) ;
 scalar_t__ isnan (float) ;

float fz_atof(const char *s)
{
 float result;

 if (s == ((void*)0))
  return 0;

 errno = 0;
 result = fz_strtof(s, ((void*)0));
 if ((errno == ERANGE && result == 0) || isnan(result))

  return 1;
 result = fz_clamp(result, -FLT_MAX, FLT_MAX);
 return result;
}
