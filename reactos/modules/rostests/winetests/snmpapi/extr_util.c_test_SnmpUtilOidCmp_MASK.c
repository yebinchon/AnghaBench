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
typedef  int UINT ;
struct TYPE_4__ {int member_0; int* member_1; } ;
typedef  scalar_t__ INT ;
typedef  TYPE_1__ AsnObjectIdentifier ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void FUNC2(void)
{
    INT ret;
    static UINT ids1[] = { 1, 2, 3 };
    static UINT ids2[] = { 1, 2, 3, 4 };
    static AsnObjectIdentifier oid1 = { 3, ids1 };
    static AsnObjectIdentifier oid2 = { 4, ids2 };

    if (0) { /* these crash on XP */
    ret = FUNC0(NULL, NULL);
    FUNC1(!ret, "SnmpUtilOidCmp succeeded\n");

    ret = FUNC0(&oid1, NULL);
    FUNC1(!ret, "SnmpUtilOidCmp succeeded\n");

    ret = FUNC0(NULL, &oid2);
    FUNC1(!ret, "SnmpUtilOidCmp succeeded\n");
    }

    ret = FUNC0(&oid2, &oid1);
    FUNC1(ret > 0, "SnmpUtilOidCmp failed\n");

    ret = FUNC0(&oid1, &oid2);
    FUNC1(ret < 0, "SnmpUtilOidCmp failed\n");
}