#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ errors; void* name; void* temp_name; } ;
typedef  TYPE_1__ stb__file_data ;
typedef  int /*<<< orphan*/  name_full ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * stb__files ; 
 int /*<<< orphan*/ * FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,char const*) ; 
 scalar_t__ FUNC5 (char*,int,char*) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*,char) ; 

FILE *  FUNC10(char *filename, const char *mode)
{
   FILE *f;
   char name_full[4096];
   char temp_full[sizeof(name_full) + 12];

   // @TODO: if the file doesn't exist, we can also use the fastpath here
   if (mode[0] != 'w' && !FUNC9(mode, '+'))
      return FUNC3(filename, mode);

   // save away the full path to the file so if the program
   // changes the cwd everything still works right! unix has
   // better ways to do this, but we have to work in windows
   name_full[0] = '\0'; // stb_fullpath reads name_full[0]
   if (FUNC5(name_full, sizeof(name_full), filename)==0)
      return 0;

   f = FUNC4(temp_full, name_full, mode);
   if (f != NULL) {
      stb__file_data *d = (stb__file_data *) FUNC2(sizeof(*d));
      if (!d) { FUNC0(0);  /* NOTREACHED */FUNC1(f); return NULL; }
      if (stb__files == NULL) stb__files = FUNC8();
      d->temp_name = FUNC6(temp_full);
      d->name      = FUNC6(name_full);
      d->errors    = 0;
      FUNC7(stb__files, f, d);
      return f;
   }

   return NULL;
}