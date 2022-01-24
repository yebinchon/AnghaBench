#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tcd_tile ;
typedef  int /*<<< orphan*/  tcd_image ;
typedef  int /*<<< orphan*/  tcd ;
typedef  int /*<<< orphan*/  opj_thread_pool_t ;
struct TYPE_13__ {int y1; int y0; int x1; int x0; int* data; int win_x0; int win_y0; int win_x1; int win_y1; int numcomps; int dx; int dy; int /*<<< orphan*/  numresolutions; struct TYPE_13__* comps; struct TYPE_13__* image; struct TYPE_13__* tiles; struct TYPE_13__* tcd_image; void* whole_tile_decoding; int /*<<< orphan*/ * thread_pool; } ;
typedef  TYPE_1__ opj_tcd_tilecomp_t ;
typedef  TYPE_1__ opj_tcd_tile_t ;
typedef  TYPE_1__ opj_tcd_t ;
typedef  TYPE_1__ opj_tcd_image_t ;
typedef  TYPE_1__ opj_image_t ;
typedef  TYPE_1__ opj_image_comp_t ;
typedef  int /*<<< orphan*/  image_comp ;
typedef  int /*<<< orphan*/  image ;
typedef  int OPJ_UINT32 ;
typedef  int OPJ_INT32 ;
typedef  double OPJ_FLOAT64 ;
typedef  void* OPJ_BOOL ;

/* Variables and functions */
 void* OPJ_FALSE ; 
 void* OPJ_TRUE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 double FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(int argc, char** argv)
{
    int num_threads = 0;
    opj_tcd_t tcd;
    opj_tcd_image_t tcd_image;
    opj_tcd_tile_t tcd_tile;
    opj_tcd_tilecomp_t tilec;
    opj_image_t image;
    opj_image_comp_t image_comp;
    opj_thread_pool_t* tp;
    OPJ_INT32 i, j, k;
    OPJ_BOOL display = OPJ_FALSE;
    OPJ_BOOL check = OPJ_FALSE;
    OPJ_INT32 size = 16384 - 1;
    OPJ_FLOAT64 start, stop;
    OPJ_UINT32 offset_x = ((OPJ_UINT32)size + 1) / 2 - 1;
    OPJ_UINT32 offset_y = ((OPJ_UINT32)size + 1) / 2 - 1;
    OPJ_UINT32 num_resolutions = 6;

    for (i = 1; i < argc; i++) {
        if (FUNC13(argv[i], "-display") == 0) {
            display = OPJ_TRUE;
            check = OPJ_TRUE;
        } else if (FUNC13(argv[i], "-check") == 0) {
            check = OPJ_TRUE;
        } else if (FUNC13(argv[i], "-size") == 0 && i + 1 < argc) {
            size = FUNC0(argv[i + 1]);
            i ++;
        } else if (FUNC13(argv[i], "-num_threads") == 0 && i + 1 < argc) {
            num_threads = FUNC0(argv[i + 1]);
            i ++;
        } else if (FUNC13(argv[i], "-num_resolutions") == 0 && i + 1 < argc) {
            num_resolutions = (OPJ_UINT32)FUNC0(argv[i + 1]);
            if (num_resolutions == 0 || num_resolutions > 32) {
                FUNC2(stderr,
                        "Invalid value for num_resolutions. Should be >= 1 and <= 32\n");
                FUNC1(1);
            }
            i ++;
        } else if (FUNC13(argv[i], "-offset") == 0 && i + 2 < argc) {
            offset_x = (OPJ_UINT32)FUNC0(argv[i + 1]);
            offset_y = (OPJ_UINT32)FUNC0(argv[i + 2]);
            i += 2;
        } else {
            FUNC14();
        }
    }

    tp = FUNC10(num_threads);

    FUNC5(&tilec, (OPJ_INT32)offset_x, (OPJ_INT32)offset_y,
               (OPJ_INT32)offset_x + size, (OPJ_INT32)offset_y + size,
               num_resolutions);

    if (display) {
        FUNC12("Before\n");
        k = 0;
        for (j = 0; j < tilec.y1 - tilec.y0; j++) {
            for (i = 0; i < tilec.x1 - tilec.x0; i++) {
                FUNC12("%d ", tilec.data[k]);
                k ++;
            }
            FUNC12("\n");
        }
    }

    FUNC6(&tcd, 0, sizeof(tcd));
    tcd.thread_pool = tp;
    tcd.whole_tile_decoding = OPJ_TRUE;
    tcd.win_x0 = (OPJ_UINT32)tilec.x0;
    tcd.win_y0 = (OPJ_UINT32)tilec.y0;
    tcd.win_x1 = (OPJ_UINT32)tilec.x1;
    tcd.win_y1 = (OPJ_UINT32)tilec.y1;
    tcd.tcd_image = &tcd_image;
    FUNC6(&tcd_image, 0, sizeof(tcd_image));
    tcd_image.tiles = &tcd_tile;
    FUNC6(&tcd_tile, 0, sizeof(tcd_tile));
    tcd_tile.x0 = tilec.x0;
    tcd_tile.y0 = tilec.y0;
    tcd_tile.x1 = tilec.x1;
    tcd_tile.y1 = tilec.y1;
    tcd_tile.numcomps = 1;
    tcd_tile.comps = &tilec;
    tcd.image = &image;
    FUNC6(&image, 0, sizeof(image));
    image.numcomps = 1;
    image.comps = &image_comp;
    FUNC6(&image_comp, 0, sizeof(image_comp));
    image_comp.dx = 1;
    image_comp.dy = 1;

    start = FUNC7();
    FUNC8(&tcd, &tilec, tilec.numresolutions);
    stop = FUNC7();
    FUNC12("time for dwt_decode: %.03f s\n", stop - start);

    if (display || check) {
        if (display) {
            FUNC12("After IDWT\n");
            k = 0;
            for (j = 0; j < tilec.y1 - tilec.y0; j++) {
                for (i = 0; i < tilec.x1 - tilec.x0; i++) {
                    FUNC12("%d ", tilec.data[k]);
                    k ++;
                }
                FUNC12("\n");
            }
        }

        FUNC9(&tilec);
        if (display) {
            FUNC12("After FDWT\n");
            k = 0;
            for (j = 0; j < tilec.y1 - tilec.y0; j++) {
                for (i = 0; i < tilec.x1 - tilec.x0; i++) {
                    FUNC12("%d ", tilec.data[k]);
                    k ++;
                }
                FUNC12("\n");
            }
        }

        if (check) {
            size_t idx;
            size_t nValues = (size_t)(tilec.x1 - tilec.x0) *
                             (size_t)(tilec.y1 - tilec.y0);
            for (idx = 0; i < (OPJ_INT32)nValues; i++) {
                if (tilec.data[idx] != FUNC4((OPJ_UINT32)idx)) {
                    FUNC12("Difference found at idx = %u\n", (OPJ_UINT32)idx);
                    FUNC1(1);
                }
            }
        }
    }

    FUNC3(&tilec);

    FUNC11(tp);
    return 0;
}