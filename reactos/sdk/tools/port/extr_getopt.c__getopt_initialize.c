
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _getopt_data {int optind; int __first_nonopt; int __last_nonopt; int __initialized; void* __ordering; int * __nextchar; } ;


 void* PERMUTE ;
 void* REQUIRE_ORDER ;
 void* RETURN_IN_ORDER ;
 int getenv (char*) ;

__attribute__((used)) static const char *
_getopt_initialize (int argc,
      char **argv, const char *optstring,
      struct _getopt_data *d, int posixly_correct)
{



  if (d->optind == 0)
    d->optind = 1;

  d->__first_nonopt = d->__last_nonopt = d->optind;
  d->__nextchar = ((void*)0);


  if (optstring[0] == '-')
    {
      d->__ordering = RETURN_IN_ORDER;
      ++optstring;
    }
  else if (optstring[0] == '+')
    {
      d->__ordering = REQUIRE_ORDER;
      ++optstring;
    }
  else if (posixly_correct || !!getenv ("POSIXLY_CORRECT"))
    d->__ordering = REQUIRE_ORDER;
  else
    d->__ordering = PERMUTE;

  d->__initialized = 1;
  return optstring;
}
