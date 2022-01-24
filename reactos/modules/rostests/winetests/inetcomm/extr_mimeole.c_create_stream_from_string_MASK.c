#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static IStream *FUNC5(const char *data)
{
    LARGE_INTEGER off;
    IStream *stream;
    HRESULT hr;

    hr = FUNC0(NULL, TRUE, &stream);
    FUNC3(hr == S_OK, "ret %08x\n", hr);

    hr = FUNC2(stream, data, FUNC4(data), NULL);
    FUNC3(hr == S_OK, "Write failed: %08x\n", hr);

    off.QuadPart = 0;
    hr = FUNC1(stream, off, STREAM_SEEK_SET, NULL);
    FUNC3(hr == S_OK, "Seek failed: %08x\n", hr);

    return stream;
}