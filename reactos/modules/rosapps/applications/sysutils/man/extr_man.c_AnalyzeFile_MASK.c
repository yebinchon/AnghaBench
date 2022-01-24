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
 int /*<<< orphan*/  BOLD ; 
 int /*<<< orphan*/  ITALIC ; 
 int MAXLINE ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  manfile ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int
FUNC9()
{
    char *cur_string=(char*)FUNC3(sizeof(char)*MAXLINE);
    char *THtag=(char*)FUNC3(sizeof(char)*MAXLINE);




    while(FUNC1(cur_string,MAXLINE,manfile))

/* TAGs processing */
     if((cur_string[0]=='.')&&(cur_string[1]=='S')&&
       (cur_string[2]=='H')) // .SH tag
      {
       FUNC0(BOLD);
       FUNC5(cur_string);
       FUNC0(NORMAL);
      }
     else
     if((cur_string[0]=='.')&&(cur_string[1]=='I')&&
       (cur_string[2]==' ')) // .I tag
      {
       FUNC0(ITALIC);
       FUNC7(cur_string);
       FUNC0(NORMAL);
      }
     else
     if((cur_string[0]=='.')&&(cur_string[1]=='/')&&
       (cur_string[2]=='\"')); // ./" tag (comment)

     else
     if((cur_string[0]=='.')&&(cur_string[1]=='T')&&
       (cur_string[2]=='H')) // .TH tag
      {
       FUNC6(THtag,cur_string);
      }
     else
     if((cur_string[0]=='.')&&(cur_string[1]=='B')&&
       (cur_string[2]==' ')) // .B tag
      {
       FUNC0(BOLD);
       FUNC7(cur_string);
       FUNC0(NORMAL);
      }
      else
      if((cur_string[0]=='.')&&(cur_string[1]=='N')&&
        (cur_string[2]=='L'))
       {
        FUNC4('\n');
        FUNC4(' ');
       }

     else
     {
       FUNC7(cur_string); // print plane text
     }
    FUNC8(cur_string, THtag);
    /* END of TAGs processing */

    FUNC2(cur_string);
    FUNC2(THtag);
    return 0;
}