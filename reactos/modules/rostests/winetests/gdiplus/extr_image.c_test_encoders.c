
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int FormatDescription; } ;
typedef TYPE_1__ ImageCodecInfo ;
typedef int GpStatus ;
typedef char CHAR ;


 int CP_ACP ;
 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringA (int ,int ,char*,int,char const*,int) ;
 int FALSE ;
 TYPE_1__* GdipAlloc (int) ;
 int GdipFree (TYPE_1__*) ;
 int GdipGetImageEncoders (int,int,TYPE_1__*) ;
 int GdipGetImageEncodersSize (int*,int*) ;
 int GenericError ;
 int LOCALE_SYSTEM_DEFAULT ;
 int Ok ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int ,int ) ;
 int expect (int ,int ) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_encoders(void)
{
    GpStatus stat;
    UINT n;
    UINT s;
    ImageCodecInfo *codecs;
    int i;
    int bmp_found;

    static const CHAR bmp_format[] = "BMP";

    stat = GdipGetImageEncodersSize(&n, &s);
    expect(stat, Ok);

    codecs = GdipAlloc(s);
    if (!codecs)
        return;

    stat = GdipGetImageEncoders(n, s, ((void*)0));
    expect(GenericError, stat);

    stat = GdipGetImageEncoders(0, s, codecs);
    expect(GenericError, stat);

    stat = GdipGetImageEncoders(n, s-1, codecs);
    expect(GenericError, stat);

    stat = GdipGetImageEncoders(n, s+1, codecs);
    expect(GenericError, stat);

    stat = GdipGetImageEncoders(n, s, codecs);
    expect(stat, Ok);

    bmp_found = FALSE;
    for (i = 0; i < n; i++)
        {
            CHAR desc[32];

            WideCharToMultiByte(CP_ACP, 0, codecs[i].FormatDescription, -1,
                                desc, 32, 0, 0);

            if (CompareStringA(LOCALE_SYSTEM_DEFAULT, 0,
                               desc, -1,
                               bmp_format, -1) == CSTR_EQUAL) {
                bmp_found = TRUE;
                break;
            }
        }
    if (!bmp_found)
        ok(FALSE, "No BMP codec found.\n");

    GdipFree(codecs);
}
