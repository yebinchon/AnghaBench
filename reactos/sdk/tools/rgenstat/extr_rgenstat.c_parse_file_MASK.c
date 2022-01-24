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
struct TYPE_4__ {int tag_id; char* name; struct TYPE_4__* next; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__* PAPI_INFO ;
typedef  int /*<<< orphan*/  API_INFO ;

/* Variables and functions */
 int TAG_UNKNOWN ; 
 TYPE_1__* api_info_list ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(char *fullname, char *cvspath, char *filename)
{
  PAPI_INFO api_info;
  char prev[200];
  char name[200];
  int tag_id;

  FUNC5(fullname);

  prev[0] = 0;
  do
    {
      tag_id = FUNC8();
      if (tag_id == TAG_UNKNOWN)
        {
          break;
        }

      /* Skip rest of the comments between the tag and the function name */
      FUNC6();

      if (FUNC7(name))
        {
          if (FUNC10(name) == 0)
            {
              FUNC4("Warning: empty function name in file %s. Previous function name was %s.\n",
                fullname, prev);
            }
          api_info = FUNC3(sizeof(API_INFO));
          if (api_info == NULL)
            {
              FUNC4("Out of memory\n");
              FUNC1(1);
            }

          api_info->tag_id = tag_id;
          FUNC9(api_info->name, name);

          FUNC2(cvspath, filename, api_info->filename);

          api_info->next = api_info_list;
          api_info_list = api_info;
          FUNC9(prev, name);
        }
    } while (1);

  FUNC0();
}