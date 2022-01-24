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
typedef  char _TCHAR ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

int FUNC13(const _TCHAR* file, const _TCHAR* env, _TCHAR *buf, size_t count)
{
  _TCHAR *envVal, *penv;
  _TCHAR curPath[MAX_PATH];

  if (!FUNC3(file != NULL) || !FUNC3(buf != NULL) ||
      !FUNC3(count > 0))
  {
      *FUNC6() = EINVAL;
      return EINVAL;
  }

  *buf = '\0';

  /* Try CWD first */
  if (FUNC0( file ) != INVALID_FILE_ATTRIBUTES)
  {
    FUNC1( file, MAX_PATH, buf, NULL );
    FUNC5(FUNC2());
    return 0;
  }

  /* Search given environment variable */
  envVal = FUNC11(env);
  if (!envVal)
  {
    FUNC7(ENOENT);
    return ENOENT;
  }

  penv = envVal;

  do
  {
    _TCHAR *end = penv;

    while(*end && *end != ';') end++; /* Find end of next path */
    if (penv == end || !*penv)
    {
      FUNC7(ENOENT);
      return ENOENT;
    }
    FUNC12(curPath, penv, (end - penv) * sizeof(_TCHAR));
    if (curPath[end - penv] != '/' && curPath[end - penv] != '\\')
    {
      curPath[end - penv] = '\\';
      curPath[end - penv + 1] = '\0';
    }
    else
      curPath[end - penv] = '\0';

    FUNC8(curPath, file);
    if (FUNC0( curPath ) != INVALID_FILE_ATTRIBUTES)
    {
      if (FUNC10(curPath) + 1 > count)
      {
          FUNC4("buf[count] is too small", ERANGE);
          return ERANGE;
      }
      FUNC9(buf, curPath);
      return 0;
    }
    penv = *end ? end + 1 : end;
  } while(1);

}