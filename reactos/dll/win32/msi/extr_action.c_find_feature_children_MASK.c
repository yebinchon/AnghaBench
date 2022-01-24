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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Feature_Parent; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_1__ MSIFEATURE ;
typedef  int /*<<< orphan*/ * LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC3(MSIRECORD * row, LPVOID param)
{
    MSIPACKAGE *package = param;
    MSIFEATURE *parent, *child;

    child = FUNC2( package, FUNC0( row, 1 ) );
    if (!child)
        return ERROR_FUNCTION_FAILED;

    if (!child->Feature_Parent)
        return ERROR_SUCCESS;

    parent = FUNC2( package, child->Feature_Parent );
    if (!parent)
        return ERROR_FUNCTION_FAILED;

    FUNC1( parent, child );
    return ERROR_SUCCESS;
}