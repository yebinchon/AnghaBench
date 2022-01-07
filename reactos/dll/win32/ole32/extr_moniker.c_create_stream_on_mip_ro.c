
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ulCntData; int abData; } ;
typedef TYPE_1__ InterfaceData ;
typedef int IStream ;
typedef int HRESULT ;
typedef int HGLOBAL ;


 int CreateStreamOnHGlobal (int ,int ,int **) ;
 int GlobalAlloc (int ,int ) ;
 void* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int TRUE ;
 int memcpy (void*,int ,int ) ;

__attribute__((used)) static HRESULT create_stream_on_mip_ro(const InterfaceData *mip, IStream **stream)
{
    HGLOBAL hglobal = GlobalAlloc(0, mip->ulCntData);
    void *pv = GlobalLock(hglobal);
    memcpy(pv, mip->abData, mip->ulCntData);
    GlobalUnlock(hglobal);
    return CreateStreamOnHGlobal(hglobal, TRUE, stream);
}
