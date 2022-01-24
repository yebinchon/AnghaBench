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
struct lemon {char* filename; int /*<<< orphan*/  errorcnt; int /*<<< orphan*/  argv0; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ user_templatename ; 

FILE *FUNC6(struct lemon *lemp)
{
  static char templatename[] = "lempar.c";
  char buf[1000];
  FILE *in;
  char *tpltname;
  char *cp;

  /* first, see if user specified a template filename on the command line. */
  if (user_templatename != 0) {
    if( FUNC0(user_templatename,004)==-1 ){
      FUNC2(stderr,"Can't find the parser driver template file \"%s\".\n",
        user_templatename);
      lemp->errorcnt++;
      return 0;
    }
    in = FUNC1(user_templatename,"rb");
    if( in==0 ){
      FUNC2(stderr,"Can't open the template file \"%s\".\n",
              user_templatename);
      lemp->errorcnt++;
      return 0;
    }
    return in;
  }

  cp = FUNC5(lemp->filename,'.');
  if( cp ){
    FUNC3(buf,"%.*s.lt",(int)(cp-lemp->filename),lemp->filename);
  }else{
    FUNC3(buf,"%s.lt",lemp->filename);
  }
  if( FUNC0(buf,004)==0 ){
    tpltname = buf;
  }else if( FUNC0(templatename,004)==0 ){
    tpltname = templatename;
  }else{
    tpltname = FUNC4(lemp->argv0,templatename,0);
  }
  if( tpltname==0 ){
    FUNC2(stderr,"Can't find the parser driver template file \"%s\".\n",
    templatename);
    lemp->errorcnt++;
    return 0;
  }
  in = FUNC1(tpltname,"rb");
  if( in==0 ){
    FUNC2(stderr,"Can't open the template file \"%s\".\n",templatename);
    lemp->errorcnt++;
    return 0;
  }
  return in;
}