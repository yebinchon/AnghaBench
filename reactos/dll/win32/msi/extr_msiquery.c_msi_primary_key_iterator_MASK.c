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
struct msi_primary_key_record_info {int n; scalar_t__ rec; } ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  struct msi_primary_key_record_info* LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int MSITYPE_KEY ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC3( MSIRECORD *rec, LPVOID param )
{
    struct msi_primary_key_record_info *info = param;
    LPCWSTR name, table;
    DWORD type;

    type = FUNC0( rec, 4 );
    if( type & MSITYPE_KEY )
    {
        info->n++;
        if( info->rec )
        {
            if ( info->n == 1 )
            {
                table = FUNC1( rec, 1 );
                FUNC2( info->rec, 0, table);
            }

            name = FUNC1( rec, 3 );
            FUNC2( info->rec, info->n, name );
        }
    }

    return ERROR_SUCCESS;
}