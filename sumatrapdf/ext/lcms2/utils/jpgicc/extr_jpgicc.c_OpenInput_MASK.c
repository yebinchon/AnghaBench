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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_9__ {void* output_message; void* error_exit; } ;
struct TYPE_10__ {TYPE_2__ pub; } ;
struct TYPE_8__ {int /*<<< orphan*/  err; } ;

/* Variables and functions */
 TYPE_1__ Decompressor ; 
 TYPE_6__ ErrorHandler ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/ * InFile ; 
 scalar_t__ JPEG_APP0 ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lIsITUFax ; 
 void* my_error_exit ; 

__attribute__((used)) static
cmsBool FUNC8(const char* FileName)
{
    int m;

    lIsITUFax = FALSE;
    InFile  = FUNC1(FileName, "rb");
    if (InFile == NULL) {
        FUNC0("Cannot open '%s'", FileName);
    }

    // Now we can initialize the JPEG decompression object.
    Decompressor.err                 = FUNC6(&ErrorHandler.pub);
    ErrorHandler.pub.error_exit      = my_error_exit;
    ErrorHandler.pub.output_message  = my_error_exit;

    FUNC3(&Decompressor);
    FUNC7(&Decompressor, InFile);

    for (m = 0; m < 16; m++)
        FUNC5(&Decompressor, JPEG_APP0 + m, 0xFFFF);

    // setup_read_icc_profile(&Decompressor);

    FUNC2(InFile, 0, SEEK_SET);
    FUNC4(&Decompressor, TRUE);

    return TRUE;
}