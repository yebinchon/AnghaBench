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
typedef  int /*<<< orphan*/  uint8_t ;
struct results_s {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct results_s const*,size_t,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ startcode_FindAnnexB ; 
 scalar_t__ startcode_FindAnnexB_Bits ; 

__attribute__((used)) static int FUNC2( const uint8_t *p_set, const uint8_t *p_end,
                            const struct results_s *p_results, size_t i_results,
                            ssize_t i_results_offset )
{
    int i_ret;

    FUNC1("checking bits code:\n");
    i_ret = FUNC0( p_set, p_end, p_results, i_results, i_results_offset,
                       startcode_FindAnnexB_Bits );
    if( i_ret != 0 )
        return i_ret;

    /* Perform same tests on simd optimized code */
    if( startcode_FindAnnexB_Bits != startcode_FindAnnexB )
    {
        FUNC1("checking asm:\n");
        i_ret = FUNC0( p_set, p_end, p_results, i_results, i_results_offset,
                           startcode_FindAnnexB );
        if( i_ret != 0 )
            return i_ret;
    }
    else FUNC1("asm not built in, skipping test:\n");

    return 0;
}