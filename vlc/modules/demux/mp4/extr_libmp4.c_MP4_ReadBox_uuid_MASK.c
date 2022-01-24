#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_9__ {int /*<<< orphan*/ * b; } ;
struct TYPE_8__ {int i_size; TYPE_7__ i_uuid; } ;
typedef  TYPE_1__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  PS3DDSBoxUUID ; 
 int /*<<< orphan*/  TfrfBoxUUID ; 
 int /*<<< orphan*/  TfxdBoxUUID ; 
 int /*<<< orphan*/  XML360BoxUUID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC6( stream_t *p_stream, MP4_Box_t *p_box )
{
    if( !FUNC0( &p_box->i_uuid, &TfrfBoxUUID ) )
        return FUNC3( p_stream, p_box );
    if( !FUNC0( &p_box->i_uuid, &TfxdBoxUUID ) )
        return FUNC4( p_stream, p_box );
    if( !FUNC0( &p_box->i_uuid, &XML360BoxUUID ) )
        return FUNC2( p_stream, p_box );
    if( !FUNC0( &p_box->i_uuid, &PS3DDSBoxUUID ) && p_box->i_size == 28 )
        return FUNC1( p_stream, p_box );

#ifdef MP4_VERBOSE
    msg_Warn( p_stream, "Unknown uuid type box: "
    "%2.2x%2.2x%2.2x%2.2x-%2.2x%2.2x-%2.2x%2.2x-"
    "%2.2x%2.2x-%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x",
    p_box->i_uuid.b[0],  p_box->i_uuid.b[1],  p_box->i_uuid.b[2],  p_box->i_uuid.b[3],
    p_box->i_uuid.b[4],  p_box->i_uuid.b[5],  p_box->i_uuid.b[6],  p_box->i_uuid.b[7],
    p_box->i_uuid.b[8],  p_box->i_uuid.b[9],  p_box->i_uuid.b[10], p_box->i_uuid.b[11],
    p_box->i_uuid.b[12], p_box->i_uuid.b[13], p_box->i_uuid.b[14], p_box->i_uuid.b[15] );
#else
    FUNC5( p_stream, "Unknown uuid type box" );
#endif
    return 1;
}