#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int succeeded; struct TYPE_4__* next; int /*<<< orphan*/  result; int /*<<< orphan*/  testname; } ;
typedef  int /*<<< orphan*/  TEST_RESULT_INFO ;
typedef  TYPE_1__* PTEST_RESULT_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ file_pointer ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* test_result_info_list ; 

__attribute__((used)) static void
FUNC10(char *filename)
{
  PTEST_RESULT_INFO test_result_info;

  FUNC4(filename);

  do
    {
      if (!FUNC7())
        {
          break;
        }

	  /*
	   * FORMAT:
	   * [ROSREGTEST:][space][|][<testname>][|][space][Status:][space][<result of running test>]
	   */

      test_result_info = FUNC2(sizeof(TEST_RESULT_INFO));
      if (test_result_info == NULL)
        {
	      FUNC3("Out of memory\n");
	      FUNC1(1);
        }

      /* Skip whitespaces */
      FUNC8();

  	  /* [|] */
      file_pointer++;

	  /* <testname> */
	  FUNC5(')', test_result_info->testname);

   	  /* [|] */
      file_pointer++;

	  /* [space] */
      file_pointer++;

  	  /* Status: */
      file_pointer += 7;

  	  /* [space] */
      file_pointer++;

  	  /* <result of running test> */
	  FUNC6(test_result_info->result);

	  if (FUNC9(test_result_info->result, "Success", 7) == 0)
        {
	      test_result_info->succeeded = 1;
        }
      else
        {
          test_result_info->succeeded = 0;
        }

      test_result_info->next = test_result_info_list;
      test_result_info_list = test_result_info;
    } while (1);

  FUNC0();
}