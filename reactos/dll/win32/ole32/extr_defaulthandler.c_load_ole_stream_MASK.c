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
struct TYPE_3__ {scalar_t__ version; int flags; } ;
typedef  TYPE_1__ ole_stream_header_t ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DefaultHandler ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DV_E_CLIPFORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OleStream ; 
 int STGM_READ ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ ole_stream_version ; 

__attribute__((used)) static HRESULT FUNC7(DefaultHandler *This, IStorage *storage)
{
    IStream *stream;
    HRESULT hr;

    hr = FUNC1(storage, OleStream, NULL, STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stream);

    if(FUNC5(hr))
    {
        DWORD read;
        ole_stream_header_t header;

        hr = FUNC2(stream, &header, sizeof(header), &read);
        if(hr == S_OK && read == sizeof(header) && header.version == ole_stream_version)
        {
            if(header.flags & 1)
            {
                /* FIXME: Read the moniker and deal with the link */
                FUNC0("Linked objects are not supported yet\n");
            }
        }
        else
        {
            FUNC6("Incorrect OleStream header\n");
            hr = DV_E_CLIPFORMAT;
        }
        FUNC3(stream);
    }
    else
        hr = FUNC4(storage, 0);

    return hr;
}