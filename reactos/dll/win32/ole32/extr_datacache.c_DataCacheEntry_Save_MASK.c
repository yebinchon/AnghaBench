#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int cfFormat; } ;
struct TYPE_9__ {int id; TYPE_6__ fmtetc; int /*<<< orphan*/  save_stream_num; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DataCacheEntry ;
typedef  int BOOL ;

/* Variables and functions */
#define  CF_DIB 130 
#define  CF_ENHMETAFILE 129 
#define  CF_METAFILEPICT 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(DataCacheEntry *cache_entry, IStorage *storage,
                                   BOOL same_as_load)
{
    HRESULT hr;
    IStream *stream;
    BOOL contents = (cache_entry->id == 1);

    FUNC3("stream_number = %d, fmtetc = %s\n", cache_entry->save_stream_num, FUNC5(&cache_entry->fmtetc));

    hr = FUNC4(cache_entry, storage, contents, &stream);
    if (FUNC0(hr))
        return hr;

    switch (cache_entry->fmtetc.cfFormat)
    {
    case CF_DIB:
        hr = FUNC6(cache_entry, contents, stream);
        break;
    case CF_METAFILEPICT:
        hr = FUNC8(cache_entry, contents, stream);
        break;
    case CF_ENHMETAFILE:
        hr = FUNC7(cache_entry, contents, stream);
        break;
    case 0:
        hr = FUNC9(cache_entry, stream);
        break;
    default:
        FUNC1("got unsupported clipboard format %x\n", cache_entry->fmtetc.cfFormat);
    }

    FUNC2(stream);
    return hr;
}