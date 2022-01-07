
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int desc ;
struct TYPE_10__ {int hemf; } ;
struct TYPE_9__ {int xExt; int yExt; int hmeta; } ;
struct TYPE_8__ {int hicon; } ;
struct TYPE_7__ {int hpal; int hbitmap; } ;
struct TYPE_11__ {int cbSizeofstruct; short picType; TYPE_4__ emf; TYPE_3__ wmf; TYPE_2__ icon; TYPE_1__ bmp; } ;
typedef TYPE_5__ PICTDESC ;
typedef int LPCSTR ;
typedef int IPicture ;
typedef int HRESULT ;
typedef int HPALETTE ;
typedef int HDC ;


 int CloseEnhMetaFile (int ) ;
 int CloseMetaFile (int ) ;
 int CreateBitmap (int,int,int,int,int *) ;
 int CreateEnhMetaFileA (int ,int *,int *,int *) ;
 int CreateMetaFileA (int *) ;
 int E_NOTIMPL ;
 int IDI_APPLICATION ;
 int IID_IPicture ;
 int LoadIconA (int *,int ) ;
 int OleCreatePictureIndirect (TYPE_5__*,int *,int ,void**) ;






 int TRUE ;
 int ok (int ,char*,short) ;

__attribute__((used)) static HRESULT create_picture(short type, IPicture **pict)
{
    PICTDESC desc;

    desc.cbSizeofstruct = sizeof(desc);
    desc.picType = type;

    switch (type)
    {
    case 128:
        return OleCreatePictureIndirect(((void*)0), &IID_IPicture, TRUE, (void **)pict);

    case 129:
        break;

    case 133:
        desc.bmp.hbitmap = CreateBitmap(1, 1, 1, 1, ((void*)0));
        desc.bmp.hpal = (HPALETTE)0xbeefdead;
        break;

    case 131:
        desc.icon.hicon = LoadIconA(((void*)0), (LPCSTR)IDI_APPLICATION);
        break;

    case 130:
    {
        HDC hdc = CreateMetaFileA(((void*)0));
        desc.wmf.hmeta = CloseMetaFile(hdc);
        desc.wmf.xExt = 1;
        desc.wmf.yExt = 1;
        break;
    }

    case 132:
    {
        HDC hdc = CreateEnhMetaFileA(0, ((void*)0), ((void*)0), ((void*)0));
        desc.emf.hemf = CloseEnhMetaFile(hdc);
        break;
    }

    default:
        ok(0, "picture type %d is not supported\n", type);
        return E_NOTIMPL;
    }

    return OleCreatePictureIndirect(&desc, &IID_IPicture, TRUE, (void **)pict);
}
