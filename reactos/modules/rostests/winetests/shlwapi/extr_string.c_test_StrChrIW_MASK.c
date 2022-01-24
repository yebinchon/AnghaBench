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
typedef  int WORD ;
typedef  char WCHAR ;
typedef  char* LPWSTR ;

/* Variables and functions */
 char* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 

__attribute__((used)) static void FUNC2(void)
{
  WCHAR string[129];
  WORD count;

  /* this test crashes on win2k SP4 */
  /*ok(!StrChrIA(NULL,'\0'), "found a character in a NULL string!\n");*/

  for (count = 32; count < 128; count++)
    string[count] = count;
  string[128] = '\0';

  for (count = 'A'; count <= 'X'; count++)
  {
    LPWSTR result = FUNC0(string+32, count);

    FUNC1(result - string == count, "found char '%c' in wrong place\n", count);
    FUNC1(FUNC0(result, count)!=NULL, "didn't find lowercase '%c'\n", count);
  }

  for (count = 'a'; count < 'z'; count++)
  {
    LPWSTR result = FUNC0(string+count+1, count);
    FUNC1(!result, "found char not in the string\n");
  }
}