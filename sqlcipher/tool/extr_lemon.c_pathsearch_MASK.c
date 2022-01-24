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
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (size_t) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (char*,char) ; 

char *FUNC9(char *argv0, char *name, int modemask)
{
  const char *pathlist;
  char *pathbufptr;
  char *pathbuf;
  char *path,*cp;
  char c;

#ifdef __WIN32__
  cp = strrchr(argv0,'\\');
#else
  cp = FUNC8(argv0,'/');
#endif
  if( cp ){
    c = *cp;
    *cp = 0;
    path = (char *)FUNC6( FUNC3(argv0) + FUNC3(name) + 2 );
    if( path ) FUNC4(path,"%s/%s",argv0,name);
    *cp = c;
  }else{
    pathlist = FUNC2("PATH");
    if( pathlist==0 ) pathlist = ".:/bin:/usr/bin";
    pathbuf = (char *) FUNC6( FUNC3(pathlist) + 1 );
    path = (char *)FUNC6( FUNC3(pathlist)+FUNC3(name)+2 );
    if( (pathbuf != 0) && (path!=0) ){
      pathbufptr = pathbuf;
      FUNC5(pathbuf, pathlist);
      while( *pathbuf ){
        cp = FUNC7(pathbuf,':');
        if( cp==0 ) cp = &pathbuf[FUNC3(pathbuf)];
        c = *cp;
        *cp = 0;
        FUNC4(path,"%s/%s",pathbuf,name);
        *cp = c;
        if( c==0 ) pathbuf[0] = 0;
        else pathbuf = &cp[1];
        if( FUNC0(path,modemask)==0 ) break;
      }
      FUNC1(pathbufptr);
    }
  }
  return path;
}