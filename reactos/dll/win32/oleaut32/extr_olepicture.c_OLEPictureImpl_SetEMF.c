
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int emh ;
struct TYPE_9__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_14__ {TYPE_1__ rclFrame; } ;
struct TYPE_10__ {int hemf; } ;
struct TYPE_11__ {TYPE_2__ emf; } ;
struct TYPE_12__ {TYPE_3__ u; } ;
struct TYPE_13__ {scalar_t__ himetricHeight; scalar_t__ himetricWidth; scalar_t__ origHeight; scalar_t__ origWidth; TYPE_4__ desc; } ;
typedef TYPE_5__ OLEPictureImpl ;
typedef TYPE_6__ ENHMETAHEADER ;


 int GetEnhMetaFileHeader (int ,int,TYPE_6__*) ;

__attribute__((used)) static void OLEPictureImpl_SetEMF(OLEPictureImpl *This)
{
    ENHMETAHEADER emh;

    GetEnhMetaFileHeader(This->desc.u.emf.hemf, sizeof(emh), &emh);

    This->origWidth = 0;
    This->origHeight = 0;
    This->himetricWidth = emh.rclFrame.right - emh.rclFrame.left;
    This->himetricHeight = emh.rclFrame.bottom - emh.rclFrame.top;
}
