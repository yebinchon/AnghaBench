#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ ExtensionBlocks; } ;
struct TYPE_9__ {int ImageCount; TYPE_2__* SavedImages; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ColorMap; } ;
struct TYPE_8__ {TYPE_6__ Extensions; struct TYPE_8__* RasterBits; TYPE_1__ ImageDesc; } ;
typedef  TYPE_2__ SavedImage ;
typedef  TYPE_3__ GifFileType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3(GifFileType * GifFile) {

    SavedImage *sp;

    if ((GifFile == NULL) || (GifFile->SavedImages == NULL)) {
        return;
    }
    for (sp = GifFile->SavedImages;
         sp < GifFile->SavedImages + GifFile->ImageCount; sp++) {
        if (sp->ImageDesc.ColorMap) {
            FUNC1(sp->ImageDesc.ColorMap);
            sp->ImageDesc.ColorMap = NULL;
        }

        FUNC2(sp->RasterBits);

        if (sp->Extensions.ExtensionBlocks)
            FUNC0(&sp->Extensions);
    }
    FUNC2(GifFile->SavedImages);
    GifFile->SavedImages=NULL;
}