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
typedef  int /*<<< orphan*/  Jbig2Image ;
typedef  int /*<<< orphan*/  Jbig2Ctx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

Jbig2Image *
FUNC4(Jbig2Ctx *ctx, char *filename)
{
    FILE *in;
    Jbig2Image *image;

    if ((in = FUNC1(filename, "rb")) == NULL) {
        FUNC2(stderr, "unable to open '%s' for reading\n", filename);
        return NULL;
    }

    image = FUNC3(ctx, in);

    FUNC0(in);

    return (image);
}