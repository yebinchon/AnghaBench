
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
is_bold_from_font_weight(const char *weight)
{
 return !strcmp(weight, "bold") || !strcmp(weight, "bolder") || atoi(weight) > 400;
}
