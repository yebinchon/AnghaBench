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
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  is_null; int /*<<< orphan*/  is_done; } ;
typedef  int /*<<< orphan*/  DeltaDeltaCompressor ;
typedef  int /*<<< orphan*/  DecompressionIterator ;
typedef  TYPE_1__ DecompressResult ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT8OID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tsl_deltadelta_compressor_finish ; 

__attribute__((used)) static void
FUNC11()
{
	DeltaDeltaCompressor *compressor = FUNC7();
	Datum compressed;
	DecompressionIterator *iter;
	int i;
	for (i = 0; i < 1015; i++)
	{
		/* prevent everything from being rle'd away */
		if (i % 2 != 0)
			FUNC8(compressor, 2 * i);
		else
			FUNC8(compressor, i);
	}

	compressed = FUNC4(tsl_deltadelta_compressor_finish, FUNC5(compressor));
	FUNC0(FUNC3(compressed) != NULL);
	FUNC1(FUNC6(FUNC3(compressed)), 1664);

	i = 0;
	iter = FUNC9(compressed, INT8OID);
	for (DecompressResult r = FUNC10(iter); !r.is_done;
		 r = FUNC10(iter))
	{
		FUNC0(!r.is_null);
		if (i % 2 != 0)
			FUNC1(FUNC2(r.val), 2 * i);
		else
			FUNC1(FUNC2(r.val), i);
		i += 1;
	}
	FUNC1(i, 1015);
}