#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct patch_offset_list {scalar_t__ min; scalar_t__ max; scalar_t__ count; scalar_t__ offset_to_apply; } ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {scalar_t__ media_transform_offset; } ;
struct TYPE_18__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_17__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  int /*<<< orphan*/  MSIPATCHINFO ;
typedef  TYPE_3__ MSIDATABASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIMODIFY_UPDATE ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 scalar_t__ MSI_INITIAL_MEDIA_TRANSFORM_OFFSET ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__**) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  patch_media_query ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__,struct patch_offset_list*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__,struct patch_offset_list*) ; 
 struct patch_offset_list* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct patch_offset_list*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,struct patch_offset_list*) ; 

__attribute__((used)) static UINT FUNC13( MSIDATABASE *db, MSIPATCHINFO *patch )
{
    MSIQUERY *view;
    MSIRECORD *rec;
    UINT r;

    r = FUNC1( db, patch_media_query, &view );
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC4( view, 0 );
    if (r != ERROR_SUCCESS)
        goto done;

    while (FUNC5( view, &rec ) == ERROR_SUCCESS)
    {
        UINT offset, last_sequence = FUNC2( rec, 2 );
        struct patch_offset_list *pos;

        /* FIXME: set/check Source field instead? */
        if (last_sequence >= MSI_INITIAL_MEDIA_TRANSFORM_OFFSET)
        {
            FUNC7( &rec->hdr );
            continue;
        }
        pos = FUNC10();
        FUNC9( db, last_sequence, pos );
        FUNC8( db, last_sequence, pos );

        offset = db->media_transform_offset - pos->min;
        last_sequence = offset + pos->max;

        last_sequence += pos->min;
        pos->offset_to_apply = offset;
        if (pos->count)
        {
            r = FUNC12( db, pos );
            if (r != ERROR_SUCCESS)
                FUNC0("Failed to set offsets, expect breakage (%u)\n", r);
        }
        FUNC3( rec, 2, last_sequence );
        r = FUNC6( view, MSIMODIFY_UPDATE, rec );
        if (r != ERROR_SUCCESS)
            FUNC0("Failed to update Media table entry, expect breakage (%u)\n", r);

        db->media_transform_offset = last_sequence + 1;

        FUNC11( pos );
        FUNC7( &rec->hdr );
    }

done:
    FUNC7( &view->hdr );
    return r;
}