#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nehd ;
typedef  scalar_t__ WORD ;
struct TYPE_6__ {int ne_restab; int ne_rsrctab; } ;
struct TYPE_5__ {int id; scalar_t__ length; scalar_t__ offset; } ;
struct TYPE_4__ {int type_id; int count; } ;
typedef  TYPE_1__ NE_TYPEINFO ;
typedef  TYPE_2__ NE_NAMEINFO ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  TYPE_3__ IMAGE_OS2_HEADER ;
typedef  int /*<<< orphan*/  HFILE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9( HFILE lzfd, LPCSTR typeid, LPCSTR resid,
                                DWORD *resLen, DWORD *resOff )
{
    IMAGE_OS2_HEADER nehd;
    NE_TYPEINFO *typeInfo;
    NE_NAMEINFO *nameInfo;
    DWORD nehdoffset;
    LPBYTE resTab;
    DWORD resTabSize;
    int count;

    /* Read in NE header */
    nehdoffset = FUNC3( lzfd, 0, SEEK_CUR );
    if ( sizeof(nehd) != FUNC2( lzfd, (LPSTR)&nehd, sizeof(nehd) ) ) return FALSE;

    resTabSize = nehd.ne_restab - nehd.ne_rsrctab;
    if ( !resTabSize )
    {
        FUNC4("No resources in NE dll\n" );
        return FALSE;
    }

    /* Read in resource table */
    resTab = FUNC5( resTabSize );
    if ( !resTab ) return FALSE;

    FUNC3( lzfd, nehd.ne_rsrctab + nehdoffset, SEEK_SET );
    if ( resTabSize != FUNC2( lzfd, (char*)resTab, resTabSize ) )
    {
        FUNC6( resTab );
        return FALSE;
    }

    /* Find resource */
    typeInfo = (NE_TYPEINFO *)(resTab + 2);

    if (!FUNC0(typeid))  /* named type */
    {
        BYTE len = FUNC7( typeid );
        while (typeInfo->type_id)
        {
            if (!(typeInfo->type_id & 0x8000))
            {
                BYTE *p = resTab + typeInfo->type_id;
                if ((*p == len) && !FUNC8( (char*)p+1, typeid, len )) goto found_type;
            }
            typeInfo = (NE_TYPEINFO *)((char *)(typeInfo + 1) +
                                       typeInfo->count * sizeof(NE_NAMEINFO));
        }
    }
    else  /* numeric type id */
    {
        WORD id = FUNC1(typeid) | 0x8000;
        while (typeInfo->type_id)
        {
            if (typeInfo->type_id == id) goto found_type;
            typeInfo = (NE_TYPEINFO *)((char *)(typeInfo + 1) +
                                       typeInfo->count * sizeof(NE_NAMEINFO));
        }
    }
    FUNC4("No typeid entry found for %p\n", typeid );
    FUNC6( resTab );
    return FALSE;

 found_type:
    nameInfo = (NE_NAMEINFO *)(typeInfo + 1);

    if (!FUNC0(resid))  /* named resource */
    {
        BYTE len = FUNC7( resid );
        for (count = typeInfo->count; count > 0; count--, nameInfo++)
        {
            BYTE *p = resTab + nameInfo->id;
            if (nameInfo->id & 0x8000) continue;
            if ((*p == len) && !FUNC8( (char*)p+1, resid, len )) goto found_name;
        }
    }
    else  /* numeric resource id */
    {
        WORD id = FUNC1(resid) | 0x8000;
        for (count = typeInfo->count; count > 0; count--, nameInfo++)
            if (nameInfo->id == id) goto found_name;
    }
    FUNC4("No resid entry found for %p\n", typeid );
    FUNC6( resTab );
    return FALSE;

 found_name:
    /* Return resource data */
    if ( resLen ) *resLen = nameInfo->length << *(WORD *)resTab;
    if ( resOff ) *resOff = nameInfo->offset << *(WORD *)resTab;

    FUNC6( resTab );
    return TRUE;
}