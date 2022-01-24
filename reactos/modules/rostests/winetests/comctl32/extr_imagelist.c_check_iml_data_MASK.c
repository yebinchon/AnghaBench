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
struct memstream {int /*<<< orphan*/  IStream_iface; int /*<<< orphan*/  stream; } ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {int LowPart; } ;
struct TYPE_7__ {TYPE_1__ cbSize; } ;
typedef  TYPE_2__ STATSTG ;
typedef  int /*<<< orphan*/  SIZE ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  ILHEAD ;
typedef  char const* HRESULT ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int BOOL ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ILC_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 char const* S_OK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,char*,int,int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct memstream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct memstream*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(HIMAGELIST himl, INT cx, INT cy, INT cur, INT max, INT grow,
        INT flags, const char *comment)
{
    INT ret, cxx, cyy, size;
    struct memstream stream;
    const ILHEAD *header;
    LARGE_INTEGER mv;
    HIMAGELIST himl2;
    HGLOBAL hglobal;
    STATSTG stat;
    char *data;
    HRESULT hr;
    SIZE bmpsize;
    BOOL b;

    ret = FUNC14(himl);
    FUNC11(ret == cur, "%s: expected image count %d got %d\n", comment, cur, ret);

    ret = FUNC13(himl, &cxx, &cyy);
    FUNC11(ret, "ImageList_GetIconSize failed\n");
    FUNC11(cxx == cx, "%s: wrong cx %d (expected %d)\n", comment, cxx, cx);
    FUNC11(cyy == cy, "%s: wrong cy %d (expected %d)\n", comment, cyy, cy);

    FUNC9(&stream);
    b = FUNC16(himl, &stream.IStream_iface);
    FUNC11(b, "%s: ImageList_Write failed\n", comment);

    hr = FUNC0(stream.stream, &hglobal);
    FUNC11(hr == S_OK, "%s: Failed to get hglobal, %#x\n", comment, hr);

    hr = FUNC4(stream.stream, &stat, STATFLAG_NONAME);
    FUNC11(hr == S_OK, "Stat() failed, hr %#x.\n", hr);

    data = FUNC1(hglobal);

    FUNC11(data != 0, "%s: ImageList_Write didn't write any data\n", comment);
    FUNC11(stat.cbSize.LowPart > sizeof(ILHEAD), "%s: ImageList_Write wrote not enough data\n", comment);

    header = (const ILHEAD *)data;
    FUNC6(header, cx, cy, cur, max, grow, flags);
    FUNC8(header, &bmpsize);
    size = FUNC5(header, data + sizeof(ILHEAD), stat.cbSize.LowPart - sizeof(ILHEAD),
            &bmpsize, flags & 0xfe, comment);
    if (!FUNC10(header) && size < stat.cbSize.LowPart - sizeof(ILHEAD))  /* mask is present */
    {
        FUNC11( flags & ILC_MASK, "%s: extra data %u/%u but mask not expected\n", comment, stat.cbSize.LowPart, size );
        FUNC5(header, data + sizeof(ILHEAD) + size, stat.cbSize.LowPart - sizeof(ILHEAD) - size,
            &bmpsize, 1, comment);
    }

    /* rewind and reconstruct from stream */
    mv.QuadPart = 0;
    FUNC3(stream.stream, mv, STREAM_SEEK_SET, NULL);
    himl2 = FUNC15(&stream.IStream_iface);
    FUNC11(himl2 != NULL, "%s: Failed to deserialize imagelist\n", comment);
    FUNC12(himl2);

    FUNC2(hglobal);
    FUNC7(&stream);
}