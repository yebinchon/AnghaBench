#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sorted ;
typedef  int /*<<< orphan*/  items ;
struct TYPE_23__ {int v; } ;
typedef  TYPE_1__ Btest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int*,int,int,int) ; 

void FUNC18(void)
{
   Btest *root = NULL, *t;
   int items[500], sorted[500];
   int i,j,z;
   for (z=0; z < 10; ++z) {
      for (i=0; i < 500; ++i)
         items[i] = FUNC15() & 0xfffffff;

      // check for collisions, and retrry if so
      FUNC12(sorted, items, sizeof(sorted));
      FUNC13(sorted, 500, sizeof(sorted[0]), FUNC14(0));
      for (i=1; i < 500; ++i)
         if (sorted[i-1] == sorted[i])
            break;
      if (i != 500) { --z; break; }

      for (i=0; i < 500; ++i)  {
         t = FUNC11(sizeof(*t));
         t->v = items[i];
         root = FUNC4(root, t);
         #ifdef STB_DEBUG
         btest__validate(root,1);
         #endif
         for (j=0; j <= i; ++j)
            FUNC9(FUNC2(root, items[j]) != NULL, "stb_bst 1");
         for (   ; j < 500; ++j)
            FUNC9(FUNC2(root, items[j]) == NULL, "stb_bst 2");
      }

      t = FUNC3(root);
      for (i=0; i < 500; ++i)
         t = FUNC6(root,t);
      FUNC9(t == NULL, "stb_bst 5");
      t = FUNC5(root);
      for (i=0; i < 500; ++i)
         t = FUNC7(root,t);
      FUNC9(t == NULL, "stb_bst 6");

      FUNC12(sorted, items, sizeof(sorted));
      FUNC13(sorted, 500, sizeof(sorted[0]), FUNC14(0));
      t = FUNC3(root);
      for (i=0; i < 500; ++i) {
         FUNC0(t->v == sorted[i]);
         t = FUNC6(root, t);
      }
      FUNC0(t == NULL);

      if (z==1)
         FUNC16(items, 500, sizeof(items[0]));
      else if (z)
         FUNC17(items, 500, sizeof(items[0]), FUNC15());

      for (i=0; i < 500; ++i)  {
         t = FUNC2(root, items[i]);
         FUNC0(t != NULL);
         root = FUNC8(root, t);
         FUNC9(FUNC2(root, items[i]) == NULL, "stb_bst 5");
         #ifdef STB_DEBUG
         btest__validate(root, 1);
         #endif
         for (j=0; j <= i; ++j)
            FUNC9(FUNC2(root, items[j]) == NULL, "stb_bst 3");
         for (   ; j < 500; ++j)
            FUNC9(FUNC2(root, items[j]) != NULL, "stb_bst 4");
         FUNC10(t);
      }
   }
}