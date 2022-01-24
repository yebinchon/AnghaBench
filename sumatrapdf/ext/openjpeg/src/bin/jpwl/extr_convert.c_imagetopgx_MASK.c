#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numcomps; TYPE_2__* comps; } ;
typedef  TYPE_1__ opj_image_t ;
struct TYPE_5__ {int w; int h; int prec; int* data; scalar_t__ sgnd; } ;
typedef  TYPE_2__ opj_image_comp_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (size_t const) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t const) ; 

int FUNC9(opj_image_t * image, const char *outfile)
{
    int w, h;
    int i, j, compno;
    FILE *fdest = NULL;

    for (compno = 0; compno < image->numcomps; compno++) {
        opj_image_comp_t *comp = &image->comps[compno];
        char bname[256]; /* buffer for name */
        char *name = bname; /* pointer */
        int nbytes = 0;
        size_t res;
        const size_t olen = FUNC7(outfile);
        const size_t dotpos = olen - 4;
        const size_t total = dotpos + 1 + 1 + 4; /* '-' + '[1-3]' + '.pgx' */
        if (outfile[dotpos] != '.') {
            /* `pgx` was recognized but there is no dot at expected position */
            FUNC2(stderr, "ERROR -> Impossible happen.");
            return 1;
        }
        if (total > 256) {
            name = (char*)FUNC5(total + 1);
        }
        FUNC8(name, outfile, dotpos);
        /*if (image->numcomps > 1) {*/
        FUNC6(name + dotpos, "_%d.pgx", compno);
        /*} else {
            strcpy(name+dotpos, ".pgx");
        }*/
        fdest = FUNC1(name, "wb");
        if (!fdest) {
            FUNC2(stderr, "ERROR -> failed to open %s for writing\n", name);
            return 1;
        }
        /* don't need name anymore */
        if (total > 256) {
            FUNC3(name);
        }

        w = image->comps[compno].w;
        h = image->comps[compno].h;

        FUNC2(*fdest, "PG ML %c %d %d %d\n", comp->sgnd ? '-' : '+', comp->prec, w, h);
        if (comp->prec <= 8) {
            nbytes = 1;
        } else if (comp->prec <= 16) {
            nbytes = 2;
        } else {
            nbytes = 4;
        }
        for (i = 0; i < w * h; i++) {
            int v = image->comps[compno].data[i];
            for (j = nbytes - 1; j >= 0; j--) {
                char byte = (char)(v >> (j * 8));
                res = FUNC4(&byte, 1, 1, fdest);
                if (res < 1) {
                    FUNC2(stderr, "failed to write 1 byte for %s\n", name);
                    FUNC0(fdest);
                    return 1;
                }
            }
        }
        FUNC0(fdest);
    }

    return 0;
}