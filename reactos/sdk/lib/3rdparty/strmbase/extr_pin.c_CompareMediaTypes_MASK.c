#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  subtype; int /*<<< orphan*/  majortype; } ;
typedef  int BOOL ;
typedef  TYPE_1__ AM_MEDIA_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 

__attribute__((used)) static BOOL FUNC3(const AM_MEDIA_TYPE * pmt1, const AM_MEDIA_TYPE * pmt2, BOOL bWildcards)
{
    FUNC1("pmt1: ");
    FUNC2(pmt1);
    FUNC1("pmt2: ");
    FUNC2(pmt2);
    return (((bWildcards && (FUNC0(&pmt1->majortype, &GUID_NULL) || FUNC0(&pmt2->majortype, &GUID_NULL))) || FUNC0(&pmt1->majortype, &pmt2->majortype)) &&
            ((bWildcards && (FUNC0(&pmt1->subtype, &GUID_NULL)   || FUNC0(&pmt2->subtype, &GUID_NULL)))   || FUNC0(&pmt1->subtype, &pmt2->subtype)));
}