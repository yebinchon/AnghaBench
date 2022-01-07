
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* const LOCAL_PATH_DELIM_STR ;
 char* Strncat (char* const,char const* const,size_t const) ;
 int Strncpy (char* const,char const* const,size_t const) ;

char *
Path(char *const dst, const size_t siz, const char *const parent, const char *const fname)
{
 (void) Strncpy(dst, parent, siz);
 (void) Strncat(dst, LOCAL_PATH_DELIM_STR, siz);
 return (Strncat(dst, fname, siz));
}
