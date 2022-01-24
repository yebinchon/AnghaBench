#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  LOCK ; 
 int /*<<< orphan*/  UNLOCK ; 
 char** __environ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** last_environ ; 
 scalar_t__ FUNC2 (size_t const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t const) ; 
 scalar_t__ FUNC4 (char**,size_t) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t const) ; 

int
FUNC7 (const char *name, const char *value, int replace)
{
  register char **ep = 0;
  register size_t size;
  const size_t namelen = FUNC5 (name);
  const size_t vallen = FUNC5 (value) + 1;

  LOCK;

  size = 0;
  if (__environ != NULL)
    {
      for (ep = __environ; *ep != NULL; ++ep)
	if (!FUNC6 (*ep, name, namelen) && (*ep)[namelen] == '=')
	  break;
	else
	  ++size;
    }

  if (__environ == NULL || *ep == NULL)
    {
      char **new_environ;
      if (__environ == last_environ && __environ != NULL)
	/* We allocated this space; we can extend it.  */
	new_environ = (char **) FUNC4 (last_environ,
					 (size + 2) * sizeof (char *));
      else
	new_environ = (char **) FUNC2 ((size + 2) * sizeof (char *));

      if (new_environ == NULL)
	{
	  UNLOCK;
	  return -1;
	}

      new_environ[size] = (char *) FUNC2 (namelen + 1 + vallen);
      if (new_environ[size] == NULL)
	{
	  FUNC1 ((char *) new_environ);
	  FUNC0 (ENOMEM);
	  UNLOCK;
	  return -1;
	}

      if (__environ != last_environ)
	FUNC3 ((char *) new_environ, (char *) __environ,
		size * sizeof (char *));

      FUNC3 (new_environ[size], name, namelen);
      new_environ[size][namelen] = '=';
      FUNC3 (&new_environ[size][namelen + 1], value, vallen);

      new_environ[size + 1] = NULL;

      last_environ = __environ = new_environ;
    }
  else if (replace)
    {
      size_t len = FUNC5 (*ep);
      if (len + 1 < namelen + 1 + vallen)
	{
	  /* The existing string is too short; malloc a new one.  */
	  char *new_string = (char *) FUNC2 (namelen + 1 + vallen);
	  if (new_string == NULL)
	    {
	      UNLOCK;
	      return -1;
	    }
	  *ep = new_string;
	}
      FUNC3 (*ep, name, namelen);
      (*ep)[namelen] = '=';
      FUNC3 (&(*ep)[namelen + 1], value, vallen);
    }

  UNLOCK;

  return 0;
}