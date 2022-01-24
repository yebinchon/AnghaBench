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
typedef  int /*<<< orphan*/  jpip_dec_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  OPJ_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(char *argv[])
{
    jpip_dec_param_t *dec;

    dec = FUNC4(OPJ_TRUE);

    if (!(FUNC2(argv[1], dec))) {
        return 1;
    }

    FUNC0(dec);

    if (!(FUNC3(argv[2], dec))) {
        return 1;
    }

    /* output_log( OPJ_TRUE, OPJ_FALSE, OPJ_TRUE, dec); */

    FUNC1(&dec);

    return 0;
}