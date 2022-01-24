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
typedef  int /*<<< orphan*/  buf ;
typedef  int WORD ;
struct TYPE_8__ {int /*<<< orphan*/  hFile; int /*<<< orphan*/ * lpstrName; int /*<<< orphan*/ * lpstrCopyright; } ;
typedef  TYPE_1__ WINE_MCIMIDI ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {scalar_t__ dwFirst; scalar_t__ dwLast; scalar_t__ dwIndex; scalar_t__ wEventLength; int wStatus; scalar_t__ dwEventPulse; scalar_t__ dwLength; int /*<<< orphan*/  wTrackNr; int /*<<< orphan*/  dwEventData; } ;
typedef  TYPE_2__ MCI_MIDITRACK ;
typedef  char* HPSTR ;
typedef  scalar_t__ FOURCC ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ MCIERR_INVALID_FILE ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char,char,char,char) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC15(WINE_MCIMIDI* wmm, MCI_MIDITRACK* mmt)
{
    DWORD		toberead;
    FOURCC		fourcc;

    if (FUNC13(wmm->hFile, (HPSTR)&fourcc, (long)sizeof(FOURCC)) !=
	(long)sizeof(FOURCC)) {
	return MCIERR_INVALID_FILE;
    }

    if (fourcc != FUNC12('M', 'T', 'r', 'k')) {
	FUNC10("Can't synchronize on 'MTrk' !\n");
	return MCIERR_INVALID_FILE;
    }

    if (FUNC6(wmm, &toberead) != 0) {
	return MCIERR_INVALID_FILE;
    }
    mmt->dwFirst = FUNC14(wmm->hFile, 0, SEEK_CUR); /* >= 0 */
    mmt->dwLast = mmt->dwFirst + toberead;

    /* compute # of pulses in this track */
    mmt->dwIndex = mmt->dwFirst;
    mmt->dwEventPulse = 0;

    while (FUNC7(wmm, mmt) == 0 && FUNC5(mmt->dwEventData) != 0x2FFF) {
	char	buf[1024];
	WORD	len;

	mmt->dwIndex += mmt->wEventLength;

	switch (FUNC5(mmt->dwEventData)) {
	case 0x02FF:
	case 0x03FF:
	    len = mmt->wEventLength - FUNC2(mmt->dwEventData);
	    if (len >= sizeof(buf)) {
		FUNC10("Buffer for text is too small (%u are needed)\n", len);
		len = sizeof(buf) - 1;
	    }
            if (FUNC13(wmm->hFile, buf, len) == len) {
		buf[len] = 0;	/* end string in case */
		switch (FUNC1(FUNC5(mmt->dwEventData))) {
		case 0x02:
		    if (wmm->lpstrCopyright) {
			FUNC10("Two copyright notices (%s|%s)\n", FUNC11(wmm->lpstrCopyright), buf);
			FUNC4(FUNC0(), 0, wmm->lpstrCopyright);
		    }
		    len = FUNC8( CP_ACP, 0, buf, -1, NULL, 0 );
		    wmm->lpstrCopyright = FUNC3( FUNC0(), 0, len * sizeof(WCHAR) );
		    FUNC8( CP_ACP, 0, buf, -1, wmm->lpstrCopyright, len );
		    break;
		case 0x03:
		    if (wmm->lpstrName) {
			FUNC10("Two names (%s|%s)\n", FUNC11(wmm->lpstrName), buf);
			FUNC4(FUNC0(), 0, wmm->lpstrName);
		    } /* last name or name from last track wins */
		    len = FUNC8( CP_ACP, 0, buf, -1, NULL, 0 );
		    wmm->lpstrName = FUNC3( FUNC0(), 0, len * sizeof(WCHAR) );
		    FUNC8( CP_ACP, 0, buf, -1, wmm->lpstrName, len );
		    break;
		}
	    }
	    break;
	}
    }
    mmt->dwLength = mmt->dwEventPulse;

    FUNC9("Track %u has %u bytes and %u pulses\n", mmt->wTrackNr, toberead, mmt->dwLength);

    /* reset track data */
    mmt->wStatus = 1;	/* ok, playing */
    mmt->dwIndex = mmt->dwFirst;
    mmt->dwEventPulse = 0;

    if (FUNC14(wmm->hFile, 0, SEEK_CUR) != mmt->dwLast) {
	FUNC10("Ouch, out of sync seek=%u track=%u\n",
	     FUNC14(wmm->hFile, 0, SEEK_CUR), mmt->dwLast);
	/* position at end of this track, to be ready to read next track */
	FUNC14(wmm->hFile, mmt->dwLast, SEEK_SET);
    }

    return 0;
}