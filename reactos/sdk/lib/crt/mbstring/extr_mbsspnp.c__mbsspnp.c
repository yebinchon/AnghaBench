
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _mbschr (unsigned char const*,int) ;
 unsigned char* _mbsinc (unsigned char*) ;
 int _mbsnextc (unsigned char const*) ;

unsigned char *_mbsspnp (const unsigned char *str1, const unsigned char *str2)
{
    int c;

    while ((c = _mbsnextc (str1))) {

 if (_mbschr (str2, c) == 0)
     return (unsigned char *) str1;

 str1 = _mbsinc ((unsigned char *) str1);

    }

    return 0;
}
