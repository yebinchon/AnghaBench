#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Clsid; int /*<<< orphan*/  FormatID; int /*<<< orphan*/  MimeType; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ ImageCodecInfo ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,size_t*) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC6(LPCWSTR mime, GUID *format, CLSID *clsid)
{
    GpStatus status;
    UINT n_codecs, info_size, i;
    ImageCodecInfo *info;
    BOOL ret = FALSE;

    status = FUNC3(&n_codecs, &info_size);
    FUNC4(Ok, status);

    info = FUNC0(info_size);

    status = FUNC2(n_codecs, info_size, info);
    FUNC4(Ok, status);

    for (i = 0; i < n_codecs; i++)
    {
        if (!FUNC5(info[i].MimeType, mime))
        {
            *format = info[i].FormatID;
            *clsid = info[i].Clsid;
            ret = TRUE;
            break;
        }
    }

    FUNC1(info);
    return ret;
}