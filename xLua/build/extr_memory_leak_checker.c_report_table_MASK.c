#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int sizearray; int /*<<< orphan*/ * array; int /*<<< orphan*/ * metatable; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  (* ObjectRelationshipReport ) (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC12 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC13(Table *h, ObjectRelationshipReport cb)
{
	Node *n, *limit = FUNC4(h);
    unsigned int i;
	
	if (h->metatable != NULL)
	{
		cb(h, h->metatable, 4, NULL, 0, NULL);
	}
	
    for (i = 0; i < h->sizearray; i++)
	{
		const TValue *item = &h->array[i];
		if (FUNC11(item))
		{
		    cb(h, FUNC0(item), 2, NULL, i + 1, NULL);
		}
	}

    for (n = FUNC3(h, 0); n < limit; n++)
	{
        if (!FUNC8(FUNC5(n)))
        {
            const TValue *key = FUNC2(n);
			if (FUNC11(key))
			{
				cb(h, FUNC0(key), 3, NULL, 0, NULL);
			}
            const TValue *value = FUNC5(n);
			if (FUNC11(value))
			{
				if (FUNC10(key))
				{
					cb(h, FUNC0(value), 1, FUNC1(FUNC7(key)), 0, NULL);
				}
				else if(FUNC9(key))
				{
					cb(h, FUNC0(value), 2, NULL, FUNC6(key), NULL);
				}
				else
				{
					// ???
					cb(h, FUNC0(value), 1, NULL, FUNC12(key), NULL);
				}
			}
		}
    }
}