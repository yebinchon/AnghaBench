#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  length ;
typedef  int /*<<< orphan*/  format_name ;
typedef  int /*<<< orphan*/  cf ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ CLIPFORMAT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,...) ; 

__attribute__((used)) static HRESULT FUNC3(IStream *stream, CLIPFORMAT clipformat)
{
    DWORD length;
    HRESULT hr;
    char format_name[256];

    if (clipformat == 0)
        length = 0;
    else if (clipformat < 0xc000)
        length = -1;
    else
    {
        length = FUNC1(clipformat, format_name, sizeof(format_name));
        /* If there is a clipboard format name, we need to include its terminating \0 */
        if (length) length++;
    }
    hr = FUNC2(stream, &length, sizeof(length), NULL);
    if (FUNC0(hr) || clipformat == 0)
        return hr;

    if (clipformat < 0xc000)
    {
        DWORD cf = clipformat;
        hr = FUNC2(stream, &cf, sizeof(cf), NULL);
    }
    else
    {
        hr = FUNC2(stream, format_name, length, NULL);
    }
    return hr;
}