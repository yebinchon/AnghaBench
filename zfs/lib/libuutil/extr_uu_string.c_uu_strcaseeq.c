
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ strcasecmp (char const*,char const*) ;

boolean_t
uu_strcaseeq(const char *a, const char *b)
{
 return (strcasecmp(a, b) == 0);
}
