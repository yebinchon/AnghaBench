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
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (char*) ; 
 char* LUA_COPYRIGHT ; 
 char* Output ; 
 scalar_t__ dumping ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ listing ; 
 char* output ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* progname ; 
 int stripping ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(int argc, char* argv[])
{
 int i;
 int version=0;
 if (argv[0]!=NULL && *argv[0]!=0) progname=argv[0];
 for (i=1; i<argc; i++)
 {
  if (*argv[i]!='-')			/* end of options; keep it */
   break;
  else if (FUNC0("--"))			/* end of options; skip it */
  {
   ++i;
   if (version) ++version;
   break;
  }
  else if (FUNC0("-"))			/* end of options; use stdin */
   break;
  else if (FUNC0("-l"))			/* list */
   ++listing;
  else if (FUNC0("-o"))			/* output file */
  {
   output=argv[++i];
   if (output==NULL || *output==0 || (*output=='-' && output[1]!=0))
    FUNC3("'-o' needs argument");
   if (FUNC0("-")) output=NULL;
  }
  else if (FUNC0("-p"))			/* parse only */
   dumping=0;
  else if (FUNC0("-s"))			/* strip debug information */
   stripping=1;
  else if (FUNC0("-v"))			/* show version */
   ++version;
  else					/* unknown option */
   FUNC3(argv[i]);
 }
 if (i==argc && (listing || !dumping))
 {
  dumping=0;
  argv[--i]=Output;
 }
 if (version)
 {
  FUNC2("%s\n",LUA_COPYRIGHT);
  if (version==argc-1) FUNC1(EXIT_SUCCESS);
 }
 return i;
}