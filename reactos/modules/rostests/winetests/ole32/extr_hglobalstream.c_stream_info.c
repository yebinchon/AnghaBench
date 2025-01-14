
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int stat ;
struct TYPE_10__ {scalar_t__ HighPart; int LowPart; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_12__ {scalar_t__ QuadPart; } ;
struct TYPE_9__ {scalar_t__ HighPart; int LowPart; } ;
struct TYPE_11__ {scalar_t__ type; scalar_t__ pwcsName; TYPE_1__ cbSize; int clsid; } ;
typedef TYPE_3__ STATSTG ;
typedef TYPE_4__ LARGE_INTEGER ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HGLOBAL ;


 int GUID_NULL ;
 scalar_t__ GetHGlobalFromStream (int *,scalar_t__*) ;
 scalar_t__ IStream_Seek (int *,TYPE_4__,int ,TYPE_2__*) ;
 scalar_t__ IStream_Stat (int *,TYPE_3__*,int ) ;
 int IsEqualIID (int *,int *) ;
 int STATFLAG_DEFAULT ;
 scalar_t__ STGTY_STREAM ;
 int STREAM_SEEK_CUR ;
 scalar_t__ S_OK ;
 int memset (TYPE_3__*,int,int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ wine_dbgstr_guid (int *) ;

__attribute__((used)) static void stream_info(IStream *stream, HGLOBAL *hmem, int *size, int *pos)
{
    HRESULT hr;
    STATSTG stat;
    LARGE_INTEGER offset;
    ULARGE_INTEGER newpos;

    *hmem = 0;
    *size = *pos = -1;

    hr = GetHGlobalFromStream(stream, hmem);
    ok(hr == S_OK, "unexpected %#x\n", hr);

    memset(&stat, 0x55, sizeof(stat));
    hr = IStream_Stat(stream, &stat, STATFLAG_DEFAULT);
    ok(hr == S_OK, "unexpected %#x\n", hr);
    ok(stat.type == STGTY_STREAM, "unexpected %#x\n", stat.type);
    ok(!stat.pwcsName, "unexpected %p\n", stat.pwcsName);
    ok(IsEqualIID(&stat.clsid, &GUID_NULL), "unexpected %s\n", wine_dbgstr_guid(&stat.clsid));
    ok(!stat.cbSize.HighPart, "unexpected %#x\n", stat.cbSize.HighPart);
    *size = stat.cbSize.LowPart;

    offset.QuadPart = 0;
    hr = IStream_Seek(stream, offset, STREAM_SEEK_CUR, &newpos);
    ok(hr == S_OK, "unexpected %#x\n", hr);
    ok(!newpos.HighPart, "unexpected %#x\n", newpos.HighPart);
    *pos = newpos.LowPart;
}
