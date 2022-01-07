
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 char* FromWide (int *) ;
 int IDNA_ALLOW_UNASSIGNED ;



 int IDN_ALLOW_UNASSIGNED ;
 int IdnToAscii (int ,int *,int,int *,int) ;
 int * ToWide (char const*) ;
 int errno ;
 int free (int *) ;
 int idna_to_ascii_8z (char const*,char**,int ) ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_alloc (int,int) ;

__attribute__((used)) static char *vlc_idna_to_ascii (const char *idn)
{
    for (const char *p = idn; *p; p++)
        if (((unsigned char)*p) >= 0x80)
        {
            errno = ENOSYS;
            return ((void*)0);
        }

    return strdup (idn);


}
