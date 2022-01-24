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
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_fetcher_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC2( input_fetcher_t* fetcher, input_item_t* item, int scope)
{
    FUNC1( fetcher, item, scope, "art finder" );
    return FUNC0( item );
}