#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  psz_title; int /*<<< orphan*/  psz_language_code; int /*<<< orphan*/  psz_language; } ;
typedef  TYPE_1__ es_out_id_t ;
struct TYPE_7__ {int /*<<< orphan*/  psz_language; } ;
typedef  TYPE_2__ es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(es_out_id_t *es,
                                     const es_format_t *fmt)
{
    FUNC3( es->psz_title );
    FUNC3( es->psz_language );
    FUNC3( es->psz_language_code );

    es->psz_language = FUNC2( fmt->psz_language );
    es->psz_language_code = FUNC1( fmt->psz_language );

    es->psz_title = FUNC0(es);
}