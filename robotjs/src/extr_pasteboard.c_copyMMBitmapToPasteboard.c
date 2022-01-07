
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * PasteboardRef ;
typedef scalar_t__ OSStatus ;
typedef int MMPasteError ;
typedef int MMBitmapRef ;
typedef int * HGLOBAL ;
typedef int * CFDataRef ;
typedef int BITMAPFILEHEADER ;


 int * CFDataCreateWithBytesNoCopy (int ,int *,size_t,int ) ;
 int CFRelease (int *) ;
 int CF_DIB ;
 int CloseClipboard () ;
 int EmptyClipboard () ;
 int GMEM_MOVEABLE ;
 int * GlobalAlloc (int ,size_t) ;
 int GlobalFree (int *) ;
 int GlobalLock (int *) ;
 int GlobalUnlock (int *) ;
 int OpenClipboard (int *) ;
 scalar_t__ PasteboardClear (int *) ;
 scalar_t__ PasteboardCreate (int ,int **) ;
 scalar_t__ PasteboardPutItemFlavor (int *,int ,int ,int *,int ) ;
 int * SetClipboardData (int ,int *) ;
 int * createBitmapData (int ,size_t*) ;
 int * createPNGData (int ,size_t*) ;
 int free (int *) ;
 int kCFAllocatorDefault ;
 int kCFAllocatorNull ;
 int kMMPasteClearError ;
 int kMMPasteDataError ;
 int kMMPasteNoError ;
 int kMMPasteOpenError ;
 int kMMPastePasteError ;
 int kMMPasteUnsupportedError ;
 int kPasteboardClipboard ;
 int kUTTypePNG ;
 int memcpy (int ,int *,size_t) ;
 scalar_t__ noErr ;

MMPasteError copyMMBitmapToPasteboard(MMBitmapRef bitmap)
{
}
