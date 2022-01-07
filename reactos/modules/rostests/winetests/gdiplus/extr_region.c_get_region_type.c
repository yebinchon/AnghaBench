
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpRegion ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 scalar_t__* GdipAlloc (scalar_t__) ;
 int GdipFree (scalar_t__*) ;
 scalar_t__ GdipGetRegionData (int *,int *,scalar_t__,int *) ;
 scalar_t__ GdipGetRegionDataSize (int *,scalar_t__*) ;
 scalar_t__ InsufficientBuffer ;
 scalar_t__ Ok ;
 int expect (scalar_t__,scalar_t__) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static DWORD get_region_type(GpRegion *region)
{
    DWORD *data;
    DWORD size;
    DWORD result;
    DWORD status;
    status = GdipGetRegionDataSize(region, &size);
    expect(Ok, status);
    data = GdipAlloc(size);
    status = GdipGetRegionData(region, (BYTE*)data, size, ((void*)0));
    ok(status == Ok || status == InsufficientBuffer, "unexpected status 0x%x\n", status);
    result = data[4];
    GdipFree(data);
    return result;
}
