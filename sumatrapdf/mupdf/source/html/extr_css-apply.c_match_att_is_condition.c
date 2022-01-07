
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_xml ;


 char* fz_xml_att (int *,char const*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
match_att_is_condition(fz_xml *node, const char *key, const char *val)
{
 const char *att = fz_xml_att(node, key);
 return att && !strcmp(val, att);
}
