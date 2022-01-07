
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lfWeight; int lfFaceName; } ;
typedef TYPE_1__ LOGFONTA ;
typedef int INT ;
typedef scalar_t__ HFONT ;


 int CLIP_DEFAULT_PRECIS ;
 scalar_t__ CreateFontA (int,int ,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DEFAULT_CHARSET ;
 int DEFAULT_PITCH ;
 int DEFAULT_QUALITY ;
 int FALSE ;
 int FW_DONTCARE ;
 int GetObjectA (scalar_t__,int,TYPE_1__*) ;
 int INVALIDFONT ;
 int OUT_DEFAULT_PRECIS ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int ok (int,char*,...) ;
 int strlen (int ) ;

void Test_CreateFontA()
{
 HFONT hFont;
 LOGFONTA logfonta;
 INT result;


 hFont = CreateFontA(15, 0, 0, 0, FW_DONTCARE, FALSE, FALSE, FALSE,
                     DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
                     DEFAULT_QUALITY, DEFAULT_PITCH, INVALIDFONT);
 ok(hFont != 0, "CreateFontA failed\n");

 result = GetObjectA(hFont, sizeof(LOGFONTA), &logfonta);
 ok(result == sizeof(LOGFONTA), "result = %d", result);

 ok(memcmp(logfonta.lfFaceName, INVALIDFONT, strlen(INVALIDFONT)) == 0, "not equal\n");
 ok(logfonta.lfWeight == FW_DONTCARE, "lfWeight=%ld\n", logfonta.lfWeight);

}
