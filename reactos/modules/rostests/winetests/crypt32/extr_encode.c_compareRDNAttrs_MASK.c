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
struct TYPE_4__ {int /*<<< orphan*/  dwValueType; scalar_t__* pszObjId; } ;
typedef  TYPE_1__ CERT_RDN_ATTR ;
typedef  int /*<<< orphan*/  CERT_NAME_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void FUNC3(const CERT_RDN_ATTR *expected,
 const CERT_RDN_ATTR *got)
{
    if (expected->pszObjId && *expected->pszObjId)
    {
        FUNC1(got->pszObjId != NULL, "Expected OID %s, got NULL\n",
         expected->pszObjId);
        if (got->pszObjId)
        {
            FUNC1(!FUNC2(got->pszObjId, expected->pszObjId),
             "Got unexpected OID %s, expected %s\n", got->pszObjId,
             expected->pszObjId);
        }
    }
    FUNC0((const CERT_NAME_VALUE *)&expected->dwValueType,
     (const CERT_NAME_VALUE *)&got->dwValueType);
}