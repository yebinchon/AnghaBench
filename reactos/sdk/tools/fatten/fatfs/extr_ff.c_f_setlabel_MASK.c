#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
typedef  size_t UINT ;
struct TYPE_9__ {int wflag; } ;
struct TYPE_8__ {int* dir; TYPE_2__* fs; scalar_t__ sclust; } ;
typedef  char TCHAR ;
typedef  scalar_t__ FRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ DIR ;
typedef  int BYTE ;

/* Variables and functions */
 int AM_VOL ; 
 int DDEM ; 
 size_t DIR_Attr ; 
 int DIR_CrtTime ; 
 int DIR_WrtTime ; 
 int* ExCvt ; 
 scalar_t__ FR_INVALID_NAME ; 
 scalar_t__ FR_NO_FILE ; 
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_DIRE ; 
 int /*<<< orphan*/  _DF1S ; 
 scalar_t__ FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char const FUNC10 (int,int) ; 
 int FUNC11 (char const) ; 
 scalar_t__ FUNC12 (TYPE_2__**,char const**,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 

FRESULT FUNC16 (
	const TCHAR* label	/* Pointer to the volume label to set */
)
{
	FRESULT res;
	DIR dj;
	BYTE vn[11];
	UINT i, j, sl;
	WCHAR w;
	DWORD tm;


	/* Get logical drive number */
	res = FUNC12(&dj.fs, &label, 1);
	if (res) FUNC4(dj.fs, res);

	/* Create a volume label in directory form */
	vn[0] = 0;
	for (sl = 0; label[sl]; sl++) ;				/* Get name length */
	for ( ; sl && label[sl - 1] == ' '; sl--) ;	/* Remove trailing spaces */
	if (sl) {	/* Create volume label in directory form */
		i = j = 0;
		do {
#if _USE_LFN && _LFN_UNICODE
			w = ff_convert(ff_wtoupper(label[i++]), 0);
#else
			w = (BYTE)label[i++];
			if (FUNC1(w))
				w = (j < 10 && i < sl && FUNC2(label[i])) ? w << 8 | (BYTE)label[i++] : 0;
#if _USE_LFN
			w = ff_convert(ff_wtoupper(ff_convert(w, 1)), 0);
#else
			if (FUNC3(w)) w -= 0x20;			/* To upper ASCII characters */
#ifdef _EXCVT
			if (w >= 0x80) w = ExCvt[w - 0x80];	/* To upper extended characters (SBCS cfg) */
#else
			if (!_DF1S && w >= 0x80) w = 0;		/* Reject extended characters (ASCII cfg) */
#endif
#endif
#endif
			if (!w || FUNC6("\"*+,.:;<=>\?[]|\x7F", w) || j >= (UINT)((w >= 0x100) ? 10 : 11)) /* Reject invalid characters for volume label */
				FUNC4(dj.fs, FR_INVALID_NAME);
			if (w >= 0x100) vn[j++] = (BYTE)(w >> 8);
			vn[j++] = (BYTE)w;
		} while (i < sl);
		while (j < 11) vn[j++] = ' ';	/* Fill remaining name field */
		if (vn[0] == DDEM) FUNC4(dj.fs, FR_INVALID_NAME);	/* Reject illegal name (heading DDEM) */
	}

	/* Set volume label */
	dj.sclust = 0;					/* Open root directory */
	res = FUNC9(&dj, 0);
	if (res == FR_OK) {
		res = FUNC8(&dj, 1);		/* Get an entry with AM_VOL */
		if (res == FR_OK) {			/* A volume label is found */
			if (vn[0]) {
				FUNC13(dj.dir, vn, 11);	/* Change the volume label name */
				tm = FUNC0();
				FUNC5(dj.dir + DIR_CrtTime, tm);
				FUNC5(dj.dir + DIR_WrtTime, tm);
			} else {
				dj.dir[0] = DDEM;			/* Remove the volume label */
			}
			dj.fs->wflag = 1;
			res = FUNC15(dj.fs);
		} else {					/* No volume label is found or error */
			if (res == FR_NO_FILE) {
				res = FR_OK;
				if (vn[0]) {				/* Create volume label as new */
					res = FUNC7(&dj, 1);	/* Allocate an entry for volume label */
					if (res == FR_OK) {
						FUNC14(dj.dir, 0, SZ_DIRE);	/* Set volume label */
						FUNC13(dj.dir, vn, 11);
						dj.dir[DIR_Attr] = AM_VOL;
						tm = FUNC0();
						FUNC5(dj.dir + DIR_CrtTime, tm);
						FUNC5(dj.dir + DIR_WrtTime, tm);
						dj.fs->wflag = 1;
						res = FUNC15(dj.fs);
					}
				}
			}
		}
	}

	FUNC4(dj.fs, res);
}