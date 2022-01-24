#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_7__ {void* output_message; void* error_exit; } ;
struct TYPE_8__ {TYPE_2__ pub; } ;
struct TYPE_6__ {int input_components; int num_components; int /*<<< orphan*/  err; } ;

/* Variables and functions */
 TYPE_1__ Compressor ; 
 TYPE_4__ ErrorHandler ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/ * OutFile ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* my_error_exit ; 

__attribute__((used)) static
cmsBool FUNC5(const char* FileName)
{

    OutFile = FUNC1(FileName, "wb");
    if (OutFile == NULL) {
        FUNC0("Cannot create '%s'", FileName);

    }

    Compressor.err                   = FUNC3(&ErrorHandler.pub);
    ErrorHandler.pub.error_exit      = my_error_exit;
    ErrorHandler.pub.output_message  = my_error_exit;

    Compressor.input_components = Compressor.num_components = 4;

    FUNC2(&Compressor);
    FUNC4(&Compressor, OutFile);
    return TRUE;
}