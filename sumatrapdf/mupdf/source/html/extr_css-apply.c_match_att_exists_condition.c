
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_xml ;


 char* fz_xml_att (int *,char const*) ;

__attribute__((used)) static int
match_att_exists_condition(fz_xml *node, const char *key)
{
 const char *s = fz_xml_att(node, key);
 return s != ((void*)0);
}
