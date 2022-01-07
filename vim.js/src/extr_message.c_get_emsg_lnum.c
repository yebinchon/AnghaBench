
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 scalar_t__ STRLEN (int *) ;
 scalar_t__ _ (char*) ;
 int * alloc (unsigned int) ;
 scalar_t__ last_sourcing_lnum ;
 scalar_t__ other_sourcing_name () ;
 scalar_t__ sourcing_lnum ;
 int * sourcing_name ;
 int sprintf (char*,char*,long) ;

__attribute__((used)) static char_u *
get_emsg_lnum()
{
    char_u *Buf, *p;



    if (sourcing_name != ((void*)0)
     && (other_sourcing_name() || sourcing_lnum != last_sourcing_lnum)
     && sourcing_lnum != 0)
    {
 p = (char_u *)_("line %4ld:");
 Buf = alloc((unsigned)(STRLEN(p) + 20));
 if (Buf != ((void*)0))
     sprintf((char *)Buf, (char *)p, (long)sourcing_lnum);
 return Buf;
    }
    return ((void*)0);
}
