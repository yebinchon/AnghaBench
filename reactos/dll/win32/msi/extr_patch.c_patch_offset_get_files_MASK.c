#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct patch_offset_list {int /*<<< orphan*/  count; int /*<<< orphan*/  files; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct patch_offset {int /*<<< orphan*/  entry; void* sequence; int /*<<< orphan*/  name; } ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_12__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  int /*<<< orphan*/  MSIDATABASE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_2__**) ; 
 void* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 struct patch_offset* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 scalar_t__ msidbFileAttributesPatchAdded ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12( MSIDATABASE *db, UINT last_sequence, struct patch_offset_list *pos )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','F','i','l','e',' ',
        'W','H','E','R','E',' ','S','e','q','u','e','n','c','e',' ','<','=',' ','?',' ',
        'O','R','D','E','R',' ','B','Y',' ','S','e','q','u','e','n','c','e',0};
    MSIQUERY *view;
    MSIRECORD *rec;
    UINT r;

    r = FUNC1( db, query, &view );
    if (r != ERROR_SUCCESS)
        return;

    rec = FUNC0( 1 );
    FUNC3( rec, 1, last_sequence );

    r = FUNC4( view, rec );
    FUNC11( &rec->hdr );
    if (r != ERROR_SUCCESS)
        return;

    while (FUNC5( view, &rec ) == ERROR_SUCCESS)
    {
        UINT attributes = FUNC2( rec, 7 );
        if (attributes & msidbFileAttributesPatchAdded)
        {
            struct patch_offset *po = FUNC9( sizeof(struct patch_offset) );

            po->name     = FUNC10( rec, 1 );
            po->sequence = FUNC2( rec, 8 );
            pos->min     = FUNC8( pos->min, po->sequence );
            pos->max     = FUNC7( pos->max, po->sequence );
            FUNC6( &pos->files, &po->entry );
            pos->count++;
        }
        FUNC11( &rec->hdr );
    }
    FUNC11( &view->hdr );
}