
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** object_type_strings ;

__attribute__((used)) static const char *typename(unsigned int type)
{
    if (type >= ARRAY_SIZE(object_type_strings))
        return ((void*)0);
    return object_type_strings[type];
}
