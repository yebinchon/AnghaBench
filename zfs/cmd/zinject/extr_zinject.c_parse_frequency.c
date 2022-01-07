
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int EINVAL ;
 int ERANGE ;
 double ZI_PERCENTAGE_MAX ;
 double strtod (char const*,char**) ;

__attribute__((used)) static int
parse_frequency(const char *str, uint32_t *percent)
{
 double val;
 char *post;

 val = strtod(str, &post);
 if (post == ((void*)0) || *post != '\0')
  return (EINVAL);


 val /= 100.0f;
 if (val < 0.000001f || val > 1.0f)
  return (ERANGE);


 *percent = ((uint32_t)(val * ZI_PERCENTAGE_MAX));

 return (0);
}
