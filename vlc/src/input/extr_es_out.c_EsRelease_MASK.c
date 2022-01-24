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
struct TYPE_4__ {int /*<<< orphan*/  fmt; struct TYPE_4__* psz_language_code; struct TYPE_4__* psz_language; struct TYPE_4__* psz_title; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ es_out_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(es_out_id_t *es)
{
    if (FUNC2(&es->rc))
    {
        FUNC1(es->psz_title);
        FUNC1(es->psz_language);
        FUNC1(es->psz_language_code);
        FUNC0(&es->fmt);
        FUNC1(es);
    }
}