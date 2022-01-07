
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_mapping {int name; } ;


 int ARRAY_SIZE (struct key_mapping const*) ;
 struct key_mapping const* key_mappings ;
 size_t strlen (int ) ;
 int strncasecmp (int ,char const*,size_t) ;

__attribute__((used)) static const struct key_mapping *
get_key_mapping(const char *name, size_t namelen)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(key_mappings); i++) {
  if (namelen == strlen(key_mappings[i].name) &&
      !strncasecmp(key_mappings[i].name, name, namelen))
   return &key_mappings[i];
 }

 return ((void*)0);
}
