
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int Clsid; int FormatID; int MimeType; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ ImageCodecInfo ;
typedef int GpStatus ;
typedef int GUID ;
typedef int CLSID ;
typedef int BOOL ;


 int FALSE ;
 TYPE_1__* GdipAlloc (size_t) ;
 int GdipFree (TYPE_1__*) ;
 int GdipGetImageEncoders (size_t,size_t,TYPE_1__*) ;
 int GdipGetImageEncodersSize (size_t*,size_t*) ;
 int Ok ;
 int TRUE ;
 int expect (int ,int ) ;
 int lstrcmpW (int ,int ) ;

__attribute__((used)) static BOOL get_encoder_clsid(LPCWSTR mime, GUID *format, CLSID *clsid)
{
    GpStatus status;
    UINT n_codecs, info_size, i;
    ImageCodecInfo *info;
    BOOL ret = FALSE;

    status = GdipGetImageEncodersSize(&n_codecs, &info_size);
    expect(Ok, status);

    info = GdipAlloc(info_size);

    status = GdipGetImageEncoders(n_codecs, info_size, info);
    expect(Ok, status);

    for (i = 0; i < n_codecs; i++)
    {
        if (!lstrcmpW(info[i].MimeType, mime))
        {
            *format = info[i].FormatID;
            *clsid = info[i].Clsid;
            ret = TRUE;
            break;
        }
    }

    GdipFree(info);
    return ret;
}
