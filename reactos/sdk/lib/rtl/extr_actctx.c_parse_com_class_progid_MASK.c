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
typedef  int /*<<< orphan*/  xmlstr_t ;
typedef  int /*<<< orphan*/  xmlbuf_t ;
struct entity {int dummy; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  asmv1W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct entity*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  progidW ; 

__attribute__((used)) static BOOL FUNC4(xmlbuf_t* xmlbuf, struct entity *entity)
{
    xmlstr_t content;
    BOOL end = FALSE;

    if (!FUNC2(xmlbuf, &end) || end || !FUNC3(xmlbuf, &content))
        return FALSE;

    if (!FUNC0(&content, entity)) return FALSE;
    return FUNC1(xmlbuf, progidW, asmv1W);
}