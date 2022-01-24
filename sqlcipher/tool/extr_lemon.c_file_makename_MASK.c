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
struct lemon {char* filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (int) ; 
 char const* outputDir ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char*,char) ; 

char *FUNC7(struct lemon *lemp, const char *suffix)
{
  char *name;
  char *cp;
  char *filename = lemp->filename;
  int sz;

  if( outputDir ){
    cp = FUNC6(filename, '/');
    if( cp ) filename = cp + 1;
  }
  sz = FUNC2(filename);
  sz += FUNC2(suffix);
  if( outputDir ) sz += FUNC2(outputDir) + 1;
  sz += 5;
  name = (char*)FUNC5( sz );
  if( name==0 ){
    FUNC1(stderr,"Can't allocate space for a filename.\n");
    FUNC0(1);
  }
  name[0] = 0;
  if( outputDir ){
    FUNC4(name, outputDir);
    FUNC3(name, "/");
  }
  FUNC3(name,filename);
  cp = FUNC6(name,'.');
  if( cp ) *cp = 0;
  FUNC3(name,suffix);
  return name;
}