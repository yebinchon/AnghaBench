
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int pc ;
typedef int output_nkf ;
typedef int output_kf ;
struct TYPE_18__ {int cbSize; int fccType; int fccHandler; int lKey; int lDataRate; int * lpbiOut; int * lpbiIn; scalar_t__ cbState; int * lpState; int lQ; int lpBitsPrev; int lpBitsOut; int * hic; int dwFlags; } ;
struct TYPE_17__ {int member_0; int member_1; int member_2; } ;
struct TYPE_16__ {int member_2; int member_1; int member_0; } ;
struct TYPE_15__ {int member_1; int member_2; int member_0; } ;
struct TYPE_14__ {int member_0; int member_2; int member_1; } ;
struct TYPE_13__ {TYPE_6__ member_3; TYPE_5__ member_2; TYPE_4__ member_1; TYPE_3__ member_0; } ;
struct TYPE_12__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_6; int member_9; int member_10; int member_8; int member_7; int member_5; } ;
typedef int RGBQUAD ;
typedef int PBITMAPINFO ;
typedef int LONG ;
typedef int * HIC ;
typedef int DWORD ;
typedef TYPE_7__ COMPVARS ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;
typedef int BITMAPINFOHEADER ;


 int ICClose (int *) ;
 int ICCompressorFree (TYPE_7__*) ;
 int ICERR_BADHANDLE ;
 int ICMF_COMPVARS_VALID ;
 int ICMODE_COMPRESS ;
 int * ICOpen (int,int,int ) ;
 int ICQUALITY_DEFAULT ;
 char* ICSeqCompressFrame (TYPE_7__*,int ,int*,scalar_t__*,int*) ;
 int ICSeqCompressFrameEnd (TYPE_7__*) ;
 scalar_t__ ICSeqCompressFrameStart (TYPE_7__*,int ) ;
 scalar_t__ TRUE ;
 int memcmp (int const*,char*,int) ;
 int mmioFOURCC (char,char,char,char) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_ICSeqCompress(void)
{




    HIC h;
    DWORD err, vidc = mmioFOURCC('v','i','d','c'), mrle = mmioFOURCC('m', 'r', 'l', 'e');
    DWORD i;
    LONG frame_len;
    BOOL key_frame, ret;
    char *frame;
    COMPVARS pc;
    struct { BITMAPINFOHEADER header; RGBQUAD map[256]; }
    input_header = { {sizeof(BITMAPINFOHEADER), 32, 1, 1, 8, 0, 32*8, 0, 0, 256, 256},
                     {{255,0,0}, {0,255,0}, {0,0,255}, {255,255,255}}};
    PBITMAPINFO bitmap = (PBITMAPINFO) &input_header;
    static BYTE input[32] = {1,2,3,3,3,3,2,3,1};
    static const BYTE output_kf[] = {1,1,1,2,4,3,0,3,2,3,1,0,23,0,0,0,0,1},
                      output_nkf[] = {0,0,0,1};

    h = ICOpen(vidc, mrle, ICMODE_COMPRESS);
    ok(h != ((void*)0), "Expected non-NULL\n");

    pc.cbSize = sizeof(pc);
    pc.dwFlags = ICMF_COMPVARS_VALID;
    pc.fccType = vidc;
    pc.fccHandler = mrle;
    pc.hic = h;
    pc.lpbiIn = ((void*)0);
    pc.lpbiOut = ((void*)0);
    pc.lpBitsOut = pc.lpBitsPrev = pc.lpState = ((void*)0);
    pc.lQ = ICQUALITY_DEFAULT;
    pc.lKey = 1;
    pc.lDataRate = 300;
    pc.lpState = ((void*)0);
    pc.cbState = 0;

    ret = ICSeqCompressFrameStart(&pc, bitmap);
    ok(ret == TRUE, "Expected TRUE\n");

    ok(pc.lpbiIn != ((void*)0), "Expected non-NULL\n");
    ok(pc.lpbiOut != ((void*)0), "Expected non-NULL\n");

    for(i = 0; i < 9; i++)
    {
        frame_len = 0;
        frame = ICSeqCompressFrame(&pc, 0, input, &key_frame, &frame_len);
        ok(frame != ((void*)0), "Frame[%d]: Expected non-NULL\n", i);
        if (frame_len == sizeof(output_nkf))
            ok(!memcmp(output_nkf, frame, frame_len), "Frame[%d]: Contents do not match\n", i);
        else if (frame_len == sizeof(output_kf))
            ok(!memcmp(output_kf, frame, frame_len), "Frame[%d]: Contents do not match\n", i);
        else
            ok(0, "Unknown frame size of %d byten\n", frame_len);
    }

    ICSeqCompressFrameEnd(&pc);
    ICCompressorFree(&pc);

    err = ICClose(h);
    ok(err == ICERR_BADHANDLE, "Expected -8, got %d\n", err);
}
