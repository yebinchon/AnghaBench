#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int x0; int y0; int x1; int y1; int numcomps; int /*<<< orphan*/ * comps; } ;
typedef  TYPE_1__ opj_image_t ;
typedef  int OPJ_UINT32 ;
typedef  scalar_t__ OPJ_BOOL ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdout ; 

void FUNC2(opj_image_t* img_header, OPJ_BOOL dev_dump_flag,
                           FILE* out_stream)
{
    char tab[2];

    if (dev_dump_flag) {
        FUNC0(stdout, "[DEV] Dump an image_header struct {\n");
        tab[0] = '\0';
    } else {
        FUNC0(out_stream, "Image info {\n");
        tab[0] = '\t';
        tab[1] = '\0';
    }

    FUNC0(out_stream, "%s x0=%d, y0=%d\n", tab, img_header->x0, img_header->y0);
    FUNC0(out_stream,     "%s x1=%d, y1=%d\n", tab, img_header->x1,
            img_header->y1);
    FUNC0(out_stream, "%s numcomps=%d\n", tab, img_header->numcomps);

    if (img_header->comps) {
        OPJ_UINT32 compno;
        for (compno = 0; compno < img_header->numcomps; compno++) {
            FUNC0(out_stream, "%s\t component %d {\n", tab, compno);
            FUNC1(&(img_header->comps[compno]), dev_dump_flag,
                                       out_stream);
            FUNC0(out_stream, "%s}\n", tab);
        }
    }

    FUNC0(out_stream, "}\n");
}