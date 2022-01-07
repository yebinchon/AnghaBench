
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_value ;


 char* jsongetstring (int const*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static inline
char * json_dupstring(const json_value *node, const char *key)
{
    const char *str = jsongetstring(node, key);
    return (str) ? strdup(str) : ((void*)0);
}
