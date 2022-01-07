
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t safe_strlen (char*) ;
 scalar_t__ toupper (char) ;

__attribute__((used)) static __inline void ToUpper(char* str)
{
 size_t i;
 for (i = 0; i < safe_strlen(str); i++)
  str[i] = (char)toupper(str[i]);
}
