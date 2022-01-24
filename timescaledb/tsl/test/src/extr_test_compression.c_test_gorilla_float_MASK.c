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
struct TYPE_4__ {int /*<<< orphan*/  val; int /*<<< orphan*/  is_null; int /*<<< orphan*/  is_done; } ;
typedef  int /*<<< orphan*/  GorillaCompressor ;
typedef  int /*<<< orphan*/  GorillaCompressed ;
typedef  int /*<<< orphan*/  DecompressionIterator ;
typedef  TYPE_1__ DecompressResult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (float,float) ; 
 int /*<<< orphan*/  FUNC2 (float,float) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLOAT4OID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 float FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (float) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14()
{
	GorillaCompressor *compressor = FUNC7();
	GorillaCompressed *compressed;
	DecompressionIterator *iter;
	float i;
	for (i = 0.0; i < 1015.0; i++)
		FUNC8(compressor, FUNC6(i));

	compressed = FUNC9(compressor);
	FUNC0(compressed != NULL);
	FUNC2(FUNC5(compressed), 1200);

	i = 0;
	iter =
		FUNC10(FUNC4(compressed), FLOAT4OID);
	for (DecompressResult r = FUNC12(iter); !r.is_done;
		 r = FUNC12(iter))
	{
		FUNC0(!r.is_null);
		FUNC1(FUNC3(r.val), i);
		i += 1.0;
	}
	FUNC2(i, 1015);

	iter =
		FUNC11(FUNC4(compressed), FLOAT4OID);
	for (DecompressResult r = FUNC13(iter); !r.is_done;
		 r = FUNC13(iter))
	{
		FUNC0(!r.is_null);
		FUNC2(FUNC3(r.val), i - 1);
		i -= 1;
	}
	FUNC2(i, 0);
}