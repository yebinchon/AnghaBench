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
typedef  char Char ;

/* Variables and functions */
 int FILE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exitValue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static 
void FUNC5 ( Char* to, Char* from ) 
{
   if ( FUNC3(from) > FILE_NAME_LEN-10 )  {
      FUNC1 (
         stderr,
         "bzip2: file name\n`%s'\n"
         "is suspiciously (more than %d chars) long.\n"
         "Try using a reasonable file name instead.  Sorry! :-)\n",
         from, FILE_NAME_LEN-10
      );
      FUNC2(1);
      FUNC0(exitValue);
   }

  FUNC4(to,from,FILE_NAME_LEN-10);
  to[FILE_NAME_LEN-10]='\0';
}