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
struct assembly_identity {int /*<<< orphan*/  type; int /*<<< orphan*/  language; int /*<<< orphan*/  public_key; int /*<<< orphan*/  arch; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct assembly_identity *ai)
{
    FUNC0( FUNC1(), 0, ai->name );
    FUNC0( FUNC1(), 0, ai->arch );
    FUNC0( FUNC1(), 0, ai->public_key );
    FUNC0( FUNC1(), 0, ai->language );
    FUNC0( FUNC1(), 0, ai->type );
}