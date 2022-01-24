#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  statstg ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_16__ {TYPE_1__* lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pwcsName; } ;
struct TYPE_14__ {int (* Write ) (TYPE_3__*,char*,int,int*) ;int (* Seek ) (TYPE_3__*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int (* Read ) (TYPE_3__*,unsigned char*,int,int*) ;} ;
typedef  TYPE_2__ STATSTG ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  TYPE_3__ IStream ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int STGM_READWRITE ; 
 int STGM_WRITE ; 
 int STG_E_ACCESSDENIED ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int S_FALSE ; 
 int S_OK ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int FUNC5 (TYPE_3__*,char*,int,int*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,unsigned char*,int,int*) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*,unsigned char*,int,int*) ; 
 int FUNC10 (TYPE_3__*,unsigned char*,int,int*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(IStream *stream, DWORD mode)
{
    static const LARGE_INTEGER start;
    HRESULT ret;
    unsigned char buf[16];
    DWORD written, count;
    STATSTG statstg;

    /* IStream_Read/Write from the COBJMACROS is undefined by shlwapi.h */

    written = 0xdeadbeaf;
    ret = stream->lpVtbl->Write(stream, "\x5e\xa7", 2, &written);
    if (mode == STGM_WRITE || mode == STGM_READWRITE)
    {
        FUNC4(ret == S_OK, "IStream_Write error %#x (access %#x)\n", ret, mode);
        FUNC4(written == 2, "expected 2, got %u\n", written);
    }
    else
    {
        FUNC4(ret == STG_E_ACCESSDENIED || FUNC2(ret == S_OK) /* win2000 */, "expected STG_E_ACCESSDENIED, got %#x (access %#x)\n", ret, mode);
        FUNC4(written == 0xdeadbeaf || FUNC2(written == 2) /* win2000 */, "expected 0xdeadbeaf, got %#x\n", written);
        written = 0;
        if (ret == S_OK) return; /* no point in further testing */
    }

    ret = stream->lpVtbl->Seek(stream, start, STREAM_SEEK_SET, NULL);
    FUNC4(ret == S_OK, "Seek error %#x\n", ret);

    count = 0xdeadbeaf;
    ret = stream->lpVtbl->Read(stream, buf, 2, &count);
    if (written != 0)
    {
        FUNC4(ret == S_OK || FUNC2(ret == S_FALSE) /* win2000 */, "IStream_Read error %#x (access %#x, written %u)\n", ret, mode, written);
        if (ret == S_OK && (mode == STGM_WRITE || mode == STGM_READWRITE))
        {
            FUNC4(count == 2, "expected 2, got %u\n", count);
            FUNC4(buf[0] == 0x5e && buf[1] == 0xa7, "expected 5ea7, got %02x%02x\n", buf[0], buf[1]);
        }
        else
            FUNC4(count == 0, "expected 0, got %u\n", count);
    }
    else
    {
        FUNC4(ret == S_FALSE, "expected S_FALSE, got %#x (access %#x, written %u)\n", ret, mode, written);
        FUNC4(count == 0, "expected 0, got %u\n", count);
    }

    ret = stream->lpVtbl->Seek(stream, start, STREAM_SEEK_SET, NULL);
    FUNC4(ret == S_OK, "Seek error %#x\n", ret);

    count = 0xdeadbeaf;
    ret = stream->lpVtbl->Read(stream, buf, 0, &count);
    FUNC4(ret == S_OK, "IStream_Read error %#x (access %#x, written %u)\n", ret, mode, written);
    FUNC4(count == 0, "expected 0, got %u\n", count);

    count = 0xdeadbeaf;
    ret = stream->lpVtbl->Read(stream, buf, sizeof(buf), &count);
    FUNC4(ret == S_FALSE, "expected S_FALSE, got %#x (access %#x, written %u)\n", ret, mode, written);
    FUNC4(count == written, "expected %u, got %u\n", written, count);
    if (count)
        FUNC4(buf[0] == 0x5e && buf[1] == 0xa7, "expected 5ea7, got %02x%02x\n", buf[0], buf[1]);

    FUNC3(&statstg, 0xff, sizeof(statstg));
    ret = FUNC1(stream, &statstg, 0);
    FUNC4(ret == S_OK, "Stat failed, hr %#x.\n", ret);
    FUNC4(statstg.pwcsName != NULL, "Unexpected name %s.\n", FUNC11(statstg.pwcsName));
    FUNC0(statstg.pwcsName);

    FUNC3(&statstg, 0xff, sizeof(statstg));
    ret = FUNC1(stream, &statstg, STATFLAG_NONAME);
    FUNC4(ret == S_OK, "Stat failed, hr %#x.\n", ret);
    FUNC4(statstg.pwcsName == NULL, "Unexpected name %s.\n", FUNC11(statstg.pwcsName));
}