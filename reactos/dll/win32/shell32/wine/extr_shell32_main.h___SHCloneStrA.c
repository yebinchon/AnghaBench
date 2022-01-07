
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SHAlloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static __inline void __SHCloneStrA(char **target, const char *source)
{
 *target = (char *)SHAlloc(strlen(source) + 1);
 strcpy(*target, source);
}
