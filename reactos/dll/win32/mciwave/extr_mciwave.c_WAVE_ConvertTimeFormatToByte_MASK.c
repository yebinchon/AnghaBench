#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cksize; } ;
struct TYPE_8__ {int dwMciTimeFormat; TYPE_2__* lpWaveFormat; TYPE_1__ ckWaveData; } ;
typedef  TYPE_3__ WINE_MCIWAVE ;
struct TYPE_7__ {int nSamplesPerSec; int /*<<< orphan*/  nAvgBytesPerSec; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
#define  MCI_FORMAT_BYTES 130 
#define  MCI_FORMAT_MILLISECONDS 129 
#define  MCI_FORMAT_SAMPLES 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	DWORD 	FUNC4(WINE_MCIWAVE* wmw, DWORD val)
{
    DWORD	ret = 0;

    switch (wmw->dwMciTimeFormat) {
    case MCI_FORMAT_MILLISECONDS:
	ret = FUNC0(val,wmw->lpWaveFormat->nAvgBytesPerSec,1000);
	if (ret > wmw->ckWaveData.cksize &&
	    val == FUNC3(wmw, wmw->ckWaveData.cksize))
	    ret = wmw->ckWaveData.cksize;
	break;
    case MCI_FORMAT_BYTES:
	ret = val;
	break;
    case MCI_FORMAT_SAMPLES:
	ret = FUNC0(val,wmw->lpWaveFormat->nAvgBytesPerSec,wmw->lpWaveFormat->nSamplesPerSec);
	break;
    default:
	FUNC2("Bad time format %u!\n", wmw->dwMciTimeFormat);
    }
    FUNC1("val=%u=0x%08x [tf=%u] => ret=%u\n", val, val, wmw->dwMciTimeFormat, ret);
    return ret;
}