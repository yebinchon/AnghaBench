
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;
struct _getopt_data {int opterr; char* optarg; int optind; char* __nextchar; int __last_nonopt; int __first_nonopt; scalar_t__ __ordering; char optopt; int __initialized; } ;


 scalar_t__ NONOPTION_P ;
 scalar_t__ PERMUTE ;
 scalar_t__ REQUIRE_ORDER ;
 char* _ (char*) ;
 char* _getopt_initialize (int,char**,char const*,struct _getopt_data*,int) ;
 int exchange (char**,struct _getopt_data*) ;
 int fprintf (int ,char*,char*,char) ;
 int process_long_option (int,char**,char const*,struct option const*,int*,int,struct _getopt_data*,int,char*) ;
 int stderr ;
 char* strchr (char const*,char) ;
 int strcmp (char*,char*) ;

int
_getopt_internal_r (int argc, char **argv, const char *optstring,
      const struct option *longopts, int *longind,
      int long_only, struct _getopt_data *d, int posixly_correct)
{
  int print_errors = d->opterr;

  if (argc < 1)
    return -1;

  d->optarg = ((void*)0);

  if (d->optind == 0 || !d->__initialized)
    optstring = _getopt_initialize (argc, argv, optstring, d, posixly_correct);
  else if (optstring[0] == '-' || optstring[0] == '+')
    optstring++;

  if (optstring[0] == ':')
    print_errors = 0;




  if (d->__nextchar == ((void*)0) || *d->__nextchar == '\0')
    {




      if (d->__last_nonopt > d->optind)
 d->__last_nonopt = d->optind;
      if (d->__first_nonopt > d->optind)
 d->__first_nonopt = d->optind;

      if (d->__ordering == PERMUTE)
 {



   if (d->__first_nonopt != d->__last_nonopt
       && d->__last_nonopt != d->optind)
     exchange (argv, d);
   else if (d->__last_nonopt != d->optind)
     d->__first_nonopt = d->optind;




   while (d->optind < argc && (argv[d->optind][0] != '-' || argv[d->optind][1] == '\0'))
     d->optind++;
   d->__last_nonopt = d->optind;
 }






      if (d->optind != argc && !strcmp (argv[d->optind], "--"))
 {
   d->optind++;

   if (d->__first_nonopt != d->__last_nonopt
       && d->__last_nonopt != d->optind)
     exchange (argv, d);
   else if (d->__first_nonopt == d->__last_nonopt)
     d->__first_nonopt = d->optind;
   d->__last_nonopt = argc;

   d->optind = argc;
 }




      if (d->optind == argc)
 {


   if (d->__first_nonopt != d->__last_nonopt)
     d->optind = d->__first_nonopt;
   return -1;
 }




      if ((argv[d->optind][0] != '-' || argv[d->optind][1] == '\0'))
 {
   if (d->__ordering == REQUIRE_ORDER)
     return -1;
   d->optarg = argv[d->optind++];
   return 1;
 }



      if (longopts)
 {
   if (argv[d->optind][1] == '-')
     {


       d->__nextchar = argv[d->optind] + 2;
       return process_long_option (argc, argv, optstring, longopts,
       longind, long_only, d,
       print_errors, "--");
     }
   if (long_only && (argv[d->optind][2]
       || !strchr (optstring, argv[d->optind][1])))
     {
       int code;
       d->__nextchar = argv[d->optind] + 1;
       code = process_long_option (argc, argv, optstring, longopts,
       longind, long_only, d,
       print_errors, "-");
       if (code != -1)
  return code;
     }
 }


      d->__nextchar = argv[d->optind] + 1;
    }



  {
    char c = *d->__nextchar++;
    const char *temp = strchr (optstring, c);


    if (*d->__nextchar == '\0')
      ++d->optind;

    if (temp == ((void*)0) || c == ':' || c == ';')
      {
 if (print_errors)
   fprintf (stderr, _("%s: invalid option -- '%c'\n"), argv[0], c);
 d->optopt = c;
 return '?';
      }


    if (temp[0] == 'W' && temp[1] == ';' && longopts != ((void*)0))
      {

 if (*d->__nextchar != '\0')
   d->optarg = d->__nextchar;
 else if (d->optind == argc)
   {
     if (print_errors)
       fprintf (stderr,
         _("%s: option requires an argument -- '%c'\n"),
         argv[0], c);

     d->optopt = c;
     if (optstring[0] == ':')
       c = ':';
     else
       c = '?';
     return c;
   }
 else
   d->optarg = argv[d->optind];

 d->__nextchar = d->optarg;
 d->optarg = ((void*)0);
 return process_long_option (argc, argv, optstring, longopts, longind,
        0 , d, print_errors, "-W ");
      }
    if (temp[1] == ':')
      {
 if (temp[2] == ':')
   {

     if (*d->__nextchar != '\0')
       {
  d->optarg = d->__nextchar;
  d->optind++;
       }
     else
       d->optarg = ((void*)0);
     d->__nextchar = ((void*)0);
   }
 else
   {

     if (*d->__nextchar != '\0')
       {
  d->optarg = d->__nextchar;


  d->optind++;
       }
     else if (d->optind == argc)
       {
  if (print_errors)
    fprintf (stderr,
      _("%s: option requires an argument -- '%c'\n"),
      argv[0], c);

  d->optopt = c;
  if (optstring[0] == ':')
    c = ':';
  else
    c = '?';
       }
     else


       d->optarg = argv[d->optind++];
     d->__nextchar = ((void*)0);
   }
      }
    return c;
  }
}
