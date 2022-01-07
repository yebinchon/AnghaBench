
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* name; int has_arg; scalar_t__* flag; scalar_t__ val; } ;
struct _getopt_data {char* __nextchar; size_t optind; scalar_t__ optopt; char* optarg; } ;


 char* _ (char*) ;
 scalar_t__ __libc_use_alloca (int) ;
 unsigned char* alloca (int) ;
 int flockfile (int ) ;
 int fprintf (int ,char*,...) ;
 int free (unsigned char*) ;
 int funlockfile (int ) ;
 unsigned char* malloc (int) ;
 int memset (unsigned char*,int ,int) ;
 int stderr ;
 int * strchr (char const*,char) ;
 size_t strlen (char*) ;
 int strncmp (char*,char*,size_t) ;

__attribute__((used)) static int
process_long_option (int argc, char **argv, const char *optstring,
       const struct option *longopts, int *longind,
       int long_only, struct _getopt_data *d,
       int print_errors, const char *prefix)
{
  char *nameend;
  size_t namelen;
  const struct option *p;
  const struct option *pfound = ((void*)0);
  int n_options;
  int option_index;

  for (nameend = d->__nextchar; *nameend && *nameend != '='; nameend++)
                       ;
  namelen = nameend - d->__nextchar;



  for (p = longopts, n_options = 0; p->name; p++, n_options++)
    if (!strncmp (p->name, d->__nextchar, namelen)
 && namelen == strlen (p->name))
      {

 pfound = p;
 option_index = n_options;
 break;
      }

  if (pfound == ((void*)0))
    {

      unsigned char *ambig_set = ((void*)0);
      int ambig_malloced = 0;
      int ambig_fallback = 0;
      int indfound = -1;

      for (p = longopts, option_index = 0; p->name; p++, option_index++)
 if (!strncmp (p->name, d->__nextchar, namelen))
   {
     if (pfound == ((void*)0))
       {

  pfound = p;
  indfound = option_index;
       }
     else if (long_only
       || pfound->has_arg != p->has_arg
       || pfound->flag != p->flag
       || pfound->val != p->val)
       {

  if (!ambig_fallback)
    {
      if (!print_errors)


        ambig_fallback = 1;
      else if (!ambig_set)
        {
   if (__libc_use_alloca (n_options))
     ambig_set = alloca (n_options);
   else if ((ambig_set = malloc (n_options)) == ((void*)0))

     ambig_fallback = 1;
   else
     ambig_malloced = 1;

   if (ambig_set)
     {
       memset (ambig_set, 0, n_options);
       ambig_set[indfound] = 1;
     }
        }
      if (ambig_set)
        ambig_set[option_index] = 1;
    }
       }
   }

      if (ambig_set || ambig_fallback)
 {
   if (print_errors)
     {
       if (ambig_fallback)
  fprintf (stderr, _("%s: option '%s%s' is ambiguous\n"),
    argv[0], prefix, d->__nextchar);
       else
  {
    flockfile (stderr);
    fprintf (stderr,
      _("%s: option '%s%s' is ambiguous; possibilities:"),
      argv[0], prefix, d->__nextchar);

    for (option_index = 0; option_index < n_options; option_index++)
      if (ambig_set[option_index])
        fprintf (stderr, " '%s%s'",
          prefix, longopts[option_index].name);




    fprintf (stderr, "\n");
    funlockfile (stderr);
  }
     }
   if (ambig_malloced)
     free (ambig_set);
   d->__nextchar += strlen (d->__nextchar);
   d->optind++;
   d->optopt = 0;
   return '?';
 }

      option_index = indfound;
    }

  if (pfound == ((void*)0))
    {



      if (!long_only || argv[d->optind][1] == '-'
   || strchr (optstring, *d->__nextchar) == ((void*)0))
 {
   if (print_errors)
     fprintf (stderr, _("%s: unrecognized option '%s%s'\n"),
       argv[0], prefix, d->__nextchar);

   d->__nextchar = ((void*)0);
   d->optind++;
   d->optopt = 0;
   return '?';
 }


      return -1;
    }


  d->optind++;
  d->__nextchar = ((void*)0);
  if (*nameend)
    {


      if (pfound->has_arg)
 d->optarg = nameend + 1;
      else
 {
   if (print_errors)
     fprintf (stderr,
       _("%s: option '%s%s' doesn't allow an argument\n"),
       argv[0], prefix, pfound->name);

   d->optopt = pfound->val;
   return '?';
 }
    }
  else if (pfound->has_arg == 1)
    {
      if (d->optind < argc)
 d->optarg = argv[d->optind++];
      else
 {
   if (print_errors)
     fprintf (stderr,
       _("%s: option '%s%s' requires an argument\n"),
       argv[0], prefix, pfound->name);

   d->optopt = pfound->val;
   return optstring[0] == ':' ? ':' : '?';
 }
    }

  if (longind != ((void*)0))
    *longind = option_index;
  if (pfound->flag)
    {
      *(pfound->flag) = pfound->val;
      return 0;
    }
  return pfound->val;
}
