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
typedef  int /*<<< orphan*/  DictionaryCompressor ;
typedef  int /*<<< orphan*/  DictionaryCompressed ;
typedef  int /*<<< orphan*/  DecompressionIterator ;
typedef  TYPE_1__ DecompressResult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10()
{
	DictionaryCompressor *compressor = FUNC5(INT4OID);
	DictionaryCompressed *compressed;
	DecompressionIterator *iter;
	int i;
	for (i = 0; i < 1015; i++)
		FUNC6(compressor, FUNC3(i % 15));

	compressed = FUNC7(compressor);
	FUNC0(compressed != NULL);

	i = 0;
	iter = FUNC9(FUNC4(compressed),
																	INT4OID);
	for (DecompressResult r = FUNC8(iter); !r.is_done;
		 r = FUNC8(iter))
	{
		FUNC0(!r.is_null);
		FUNC1(FUNC2(r.val), i % 15);
		i += 1;
	}
	FUNC1(i, 1015);
}