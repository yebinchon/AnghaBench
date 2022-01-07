
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct memstream {int IStream_iface; int stream; } ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {int LowPart; } ;
struct TYPE_7__ {TYPE_1__ cbSize; } ;
typedef TYPE_2__ STATSTG ;
typedef int SIZE ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef scalar_t__ INT ;
typedef int ILHEAD ;
typedef char const* HRESULT ;
typedef int * HIMAGELIST ;
typedef int HGLOBAL ;
typedef int BOOL ;


 char* GetHGlobalFromStream (int ,int *) ;
 char* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ ILC_MASK ;
 int IStream_Seek (int ,TYPE_3__,int ,int *) ;
 char* IStream_Stat (int ,TYPE_2__*,int ) ;
 int STATFLAG_NONAME ;
 int STREAM_SEEK_SET ;
 char const* S_OK ;
 scalar_t__ check_bitmap_data (int const*,char*,int,int *,int,char const*) ;
 int check_ilhead_data (int const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int cleanup_memstream (struct memstream*) ;
 int imagelist_get_bitmap_size (int const*,int *) ;
 int init_memstream (struct memstream*) ;
 int is_v6_header (int const*) ;
 int ok (int,char*,...) ;
 int pImageList_Destroy (int *) ;
 scalar_t__ pImageList_GetIconSize (int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ pImageList_GetImageCount (int *) ;
 int * pImageList_Read (int *) ;
 int pImageList_Write (int *,int *) ;

__attribute__((used)) static void check_iml_data(HIMAGELIST himl, INT cx, INT cy, INT cur, INT max, INT grow,
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

    ret = pImageList_GetImageCount(himl);
    ok(ret == cur, "%s: expected image count %d got %d\n", comment, cur, ret);

    ret = pImageList_GetIconSize(himl, &cxx, &cyy);
    ok(ret, "ImageList_GetIconSize failed\n");
    ok(cxx == cx, "%s: wrong cx %d (expected %d)\n", comment, cxx, cx);
    ok(cyy == cy, "%s: wrong cy %d (expected %d)\n", comment, cyy, cy);

    init_memstream(&stream);
    b = pImageList_Write(himl, &stream.IStream_iface);
    ok(b, "%s: ImageList_Write failed\n", comment);

    hr = GetHGlobalFromStream(stream.stream, &hglobal);
    ok(hr == S_OK, "%s: Failed to get hglobal, %#x\n", comment, hr);

    hr = IStream_Stat(stream.stream, &stat, STATFLAG_NONAME);
    ok(hr == S_OK, "Stat() failed, hr %#x.\n", hr);

    data = GlobalLock(hglobal);

    ok(data != 0, "%s: ImageList_Write didn't write any data\n", comment);
    ok(stat.cbSize.LowPart > sizeof(ILHEAD), "%s: ImageList_Write wrote not enough data\n", comment);

    header = (const ILHEAD *)data;
    check_ilhead_data(header, cx, cy, cur, max, grow, flags);
    imagelist_get_bitmap_size(header, &bmpsize);
    size = check_bitmap_data(header, data + sizeof(ILHEAD), stat.cbSize.LowPart - sizeof(ILHEAD),
            &bmpsize, flags & 0xfe, comment);
    if (!is_v6_header(header) && size < stat.cbSize.LowPart - sizeof(ILHEAD))
    {
        ok( flags & ILC_MASK, "%s: extra data %u/%u but mask not expected\n", comment, stat.cbSize.LowPart, size );
        check_bitmap_data(header, data + sizeof(ILHEAD) + size, stat.cbSize.LowPart - sizeof(ILHEAD) - size,
            &bmpsize, 1, comment);
    }


    mv.QuadPart = 0;
    IStream_Seek(stream.stream, mv, STREAM_SEEK_SET, ((void*)0));
    himl2 = pImageList_Read(&stream.IStream_iface);
    ok(himl2 != ((void*)0), "%s: Failed to deserialize imagelist\n", comment);
    pImageList_Destroy(himl2);

    GlobalUnlock(hglobal);
    cleanup_memstream(&stream);
}
