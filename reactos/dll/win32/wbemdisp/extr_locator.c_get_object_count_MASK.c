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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  WBEM_INFINITE ; 

__attribute__((used)) static LONG FUNC2( IEnumWbemClassObject *iter )
{
    LONG count = 0;
    while (FUNC1( iter, WBEM_INFINITE, 1 ) == S_OK) count++;
    FUNC0( iter );
    return count;
}