#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {size_t cbData; int /*<<< orphan*/ * pbData; } ;
typedef  scalar_t__ (* ProcessFunc ) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ;
typedef  TYPE_1__ DATA_BLOB ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTPROTECT_UI_FORBIDDEN ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(const uint8_t *p_src, size_t i_src_len, uint8_t **pp_dst, ProcessFunc pf_process)
{
    DATA_BLOB input_blob =
    {
        .cbData = i_src_len,
        .pbData = (BYTE*)p_src
    };
    DATA_BLOB output_blob;

    if (pf_process( &input_blob, NULL, NULL, NULL, NULL, CRYPTPROTECT_UI_FORBIDDEN, &output_blob) == FALSE)
        return 0;
    *pp_dst = FUNC1(output_blob.cbData);
    if( FUNC3( *pp_dst == NULL ) )
    {
        FUNC0( output_blob.pbData );
        return 0;
    }
    FUNC2( *pp_dst, output_blob.pbData, output_blob.cbData );
    FUNC0( output_blob.pbData );
    return output_blob.cbData;
}