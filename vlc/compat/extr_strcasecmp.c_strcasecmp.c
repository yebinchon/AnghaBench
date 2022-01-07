
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (unsigned char) ;
 int stricmp (char const*,char const*) ;
 int tolower (unsigned char) ;

int strcasecmp (const char *s1, const char *s2)
{



    for (size_t i = 0;; i++)
    {
        unsigned char c1 = s1[i], c2 = s2[i];
        int d = tolower (c1) - tolower (c2);
        if (d || !c1)
            return d;
        assert (c2);
    }

}
