
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_4__ {int lStructSize; int nMaxFile; char* lpstrTitle; char* lpstrFilter; int Flags; int * lpstrInitialDir; scalar_t__* lpstrFile; int hwndOwner; } ;
typedef TYPE_1__ OPENFILENAME ;


 int GetOpenFileNameW (TYPE_1__*) ;
 int OFN_FILEMUSTEXIST ;
 int OFN_HIDEREADONLY ;
 int hwndframe ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int winfilename(wchar_t *buf, int len)
{
 OPENFILENAME ofn;
 buf[0] = 0;
 memset(&ofn, 0, sizeof(OPENFILENAME));
 ofn.lStructSize = sizeof(OPENFILENAME);
 ofn.hwndOwner = hwndframe;
 ofn.lpstrFile = buf;
 ofn.nMaxFile = len;
 ofn.lpstrInitialDir = ((void*)0);
 ofn.lpstrTitle = L"MuPDF: Open PDF file";
 ofn.lpstrFilter = L"Documents (*.pdf;*.xps;*.cbz;*.epub;*.fb2;*.zip;*.png;*.jpeg;*.tiff)\0*.zip;*.cbz;*.xps;*.epub;*.fb2;*.pdf;*.jpe;*.jpg;*.jpeg;*.jfif;*.tif;*.tiff\0PDF Files (*.pdf)\0*.pdf\0XPS Files (*.xps)\0*.xps\0CBZ Files (*.cbz;*.zip)\0*.zip;*.cbz\0EPUB Files (*.epub)\0*.epub\0FictionBook 2 Files (*.fb2)\0*.fb2\0Image Files (*.png;*.jpeg;*.tiff)\0*.png;*.jpg;*.jpe;*.jpeg;*.jfif;*.tif;*.tiff\0All Files\0*\0\0";
 ofn.Flags = OFN_FILEMUSTEXIST|OFN_HIDEREADONLY;
 return GetOpenFileNameW(&ofn);
}
