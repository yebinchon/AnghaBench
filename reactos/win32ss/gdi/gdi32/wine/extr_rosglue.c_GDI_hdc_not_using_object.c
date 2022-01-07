
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HGDIOBJ ;
typedef scalar_t__ HDC ;


 int ASSERT (int) ;
 scalar_t__ GdiRemoveClientObjLink (int ) ;

VOID
GDI_hdc_not_using_object(
    HGDIOBJ hobj,
    HDC hdc)
{
    HDC hdcLink;


    hdcLink = GdiRemoveClientObjLink(hobj);
    ASSERT(hdcLink == hdc);
}
