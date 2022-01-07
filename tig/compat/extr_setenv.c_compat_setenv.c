
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int LOCK ;
 int UNLOCK ;
 char** __environ ;
 int __set_errno (int ) ;
 int free (char*) ;
 char** last_environ ;
 scalar_t__ malloc (size_t const) ;
 int memcpy (char*,char const*,size_t const) ;
 scalar_t__ realloc (char**,size_t) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,size_t const) ;

int
compat_setenv (const char *name, const char *value, int replace)
{
  register char **ep = 0;
  register size_t size;
  const size_t namelen = strlen (name);
  const size_t vallen = strlen (value) + 1;

  LOCK;

  size = 0;
  if (__environ != ((void*)0))
    {
      for (ep = __environ; *ep != ((void*)0); ++ep)
 if (!strncmp (*ep, name, namelen) && (*ep)[namelen] == '=')
   break;
 else
   ++size;
    }

  if (__environ == ((void*)0) || *ep == ((void*)0))
    {
      char **new_environ;
      if (__environ == last_environ && __environ != ((void*)0))

 new_environ = (char **) realloc (last_environ,
      (size + 2) * sizeof (char *));
      else
 new_environ = (char **) malloc ((size + 2) * sizeof (char *));

      if (new_environ == ((void*)0))
 {
   UNLOCK;
   return -1;
 }

      new_environ[size] = (char *) malloc (namelen + 1 + vallen);
      if (new_environ[size] == ((void*)0))
 {
   free ((char *) new_environ);
   __set_errno (ENOMEM);
   UNLOCK;
   return -1;
 }

      if (__environ != last_environ)
 memcpy ((char *) new_environ, (char *) __environ,
  size * sizeof (char *));

      memcpy (new_environ[size], name, namelen);
      new_environ[size][namelen] = '=';
      memcpy (&new_environ[size][namelen + 1], value, vallen);

      new_environ[size + 1] = ((void*)0);

      last_environ = __environ = new_environ;
    }
  else if (replace)
    {
      size_t len = strlen (*ep);
      if (len + 1 < namelen + 1 + vallen)
 {

   char *new_string = (char *) malloc (namelen + 1 + vallen);
   if (new_string == ((void*)0))
     {
       UNLOCK;
       return -1;
     }
   *ep = new_string;
 }
      memcpy (*ep, name, namelen);
      (*ep)[namelen] = '=';
      memcpy (&(*ep)[namelen + 1], value, vallen);
    }

  UNLOCK;

  return 0;
}
