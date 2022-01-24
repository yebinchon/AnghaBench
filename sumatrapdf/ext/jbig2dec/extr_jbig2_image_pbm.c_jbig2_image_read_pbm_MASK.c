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
struct TYPE_5__ {int height; int stride; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ Jbig2Image ;
typedef  int /*<<< orphan*/  Jbig2Ctx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 

Jbig2Image *
FUNC8(Jbig2Ctx *ctx, FILE *in)
{
    int i, dim[2];
    int done;
    Jbig2Image *image;
    int c;
    char buf[32];

    /* look for 'P4' magic */
    while ((c = FUNC1(in)) != 'P') {
        if (FUNC0(in))
            return NULL;
    }
    if ((c = FUNC1(in)) != '4') {
        FUNC2(stderr, "not a binary pbm file.\n");
        return NULL;
    }
    /* read size. we must find two decimal numbers representing
       the image dimensions. 'done' will index whether we're
       looking for the width or the height and 'i' will be our
       array index for copying strings into our buffer */
    done = 0;
    i = 0;
    while (done < 2) {
        c = FUNC1(in);
        /* skip whitespace */
        if (c == ' ' || c == '\t' || c == '\r' || c == '\n')
            continue;
        /* skip comments */
        if (c == '#') {
            while ((c = FUNC1(in)) != '\n');
            continue;
        }
        /* report unexpected eof */
        if (c == EOF) {
            FUNC2(stderr, "end-of-file parsing pbm header\n");
            return NULL;
        }
        if (FUNC4(c)) {
            buf[i++] = c;
            while (FUNC4(c = FUNC1(in))) {
                if (i >= 32) {
                    FUNC2(stderr, "pbm parsing error\n");
                    return NULL;
                }
                buf[i++] = c;
            }
            buf[i] = '\0';
            if (FUNC7(buf, "%d", &dim[done]) != 1) {
                FUNC2(stderr, "failed to read pbm image dimensions\n");
                return NULL;
            }
            i = 0;
            done++;
        }
    }
    /* allocate image structure */
    image = FUNC5(ctx, dim[0], dim[1]);
    if (image == NULL) {
        FUNC2(stderr, "failed to allocate %dx%d image for pbm file\n", dim[0], dim[1]);
        return NULL;
    }
    /* the pbm data is byte-aligned, so we can
       do a simple block read */
    (void)FUNC3(image->data, 1, image->height * image->stride, in);
    if (FUNC0(in)) {
        FUNC2(stderr, "unexpected end of pbm file.\n");
        FUNC6(ctx, image);
        return NULL;
    }
    /* success */
    return image;
}