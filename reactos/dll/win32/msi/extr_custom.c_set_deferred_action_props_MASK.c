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
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ MSIPACKAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  szCustomActionData ; 
 int /*<<< orphan*/  szProductCode ; 
 int /*<<< orphan*/  szUserSID ; 

__attribute__((used)) static void FUNC3( MSIPACKAGE *package, const WCHAR *deferred_data )
{
    static const WCHAR sep[] = {'<','=','>',0};
    const WCHAR *end, *beg = deferred_data + 1;

    end = FUNC2(beg, sep);
    FUNC0( package->db, szCustomActionData, beg, end - beg );
    beg = end + 3;

    end = FUNC2(beg, sep);
    FUNC0( package->db, szUserSID, beg, end - beg );
    beg = end + 3;

    end = FUNC1(beg, ']');
    FUNC0( package->db, szProductCode, beg, end - beg );
}