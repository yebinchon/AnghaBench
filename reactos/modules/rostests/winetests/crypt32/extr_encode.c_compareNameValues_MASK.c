#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int cbData; scalar_t__ pbData; } ;
struct TYPE_6__ {scalar_t__ dwValueType; TYPE_1__ Value; } ;
typedef  TYPE_2__ CERT_NAME_VALUE ;

/* Variables and functions */
 scalar_t__ CERT_RDN_ENCODED_BLOB ; 
 scalar_t__ CERT_RDN_UTF8_STRING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(const CERT_NAME_VALUE *expected,
 const CERT_NAME_VALUE *got)
{
    if (expected->dwValueType == CERT_RDN_UTF8_STRING &&
        got->dwValueType == CERT_RDN_ENCODED_BLOB)
    {
        FUNC3("Can't handle CERT_RDN_UTF8_STRING\n");
        return;
    }

    FUNC2(got->dwValueType == expected->dwValueType,
     "Expected string type %d, got %d\n", expected->dwValueType,
     got->dwValueType);
    FUNC2(got->Value.cbData == expected->Value.cbData ||
     got->Value.cbData == expected->Value.cbData - sizeof(WCHAR) /* Win8 */,
     "String type %d: unexpected data size, got %d, expected %d\n",
     expected->dwValueType, got->Value.cbData, expected->Value.cbData);
    if (got->Value.cbData && got->Value.pbData)
        FUNC2(!FUNC0(got->Value.pbData, expected->Value.pbData,
         FUNC1(got->Value.cbData, expected->Value.cbData)),
         "String type %d: unexpected value\n", expected->dwValueType);
}