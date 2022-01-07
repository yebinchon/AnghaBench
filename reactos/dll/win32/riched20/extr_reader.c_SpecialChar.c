
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {int cbSize; } ;
struct TYPE_14__ {int rtfMinor; int rtfParam; int unicodeLength; TYPE_10__* editor; TYPE_2__ fmt; int rtfMajor; int rtfClass; } ;
struct TYPE_13__ {int bEmulateVersion10; } ;
typedef TYPE_1__ RTF_Info ;


 int ERR (char*,int ,int ,int) ;
 int ME_InsertEndRowFromCursor (TYPE_10__*,int ) ;
 int ME_SetSelectionParaFormat (TYPE_10__*,TYPE_2__*) ;
 int RTFFlushOutputBuffer (TYPE_1__*) ;
 int RTFGetToken (TYPE_1__*) ;
 int RTFPutUnicodeChar (TYPE_1__*,int) ;
 int RTFRouteToken (TYPE_1__*) ;
 int RTFSkipGroup (TYPE_1__*) ;
 int RTFUngetToken (TYPE_1__*) ;
 int memset (TYPE_2__*,int ,int) ;

 int rtfDestination ;
 int rtfText ;


__attribute__((used)) static void SpecialChar (RTF_Info *info)
{
 switch (info->rtfMinor)
 {
 case 136:


  RTFGetToken(info);
  if (info->rtfClass != rtfDestination)
   RTFSkipGroup(info);
  else
   RTFRouteToken(info);
  break;
 case 128:
 {
                int i;

                RTFPutUnicodeChar(info, info->rtfParam);


                for (i = 0; i < info->unicodeLength; i++)
                {
   RTFGetToken(info);
                        if (info->rtfClass != rtfText)
          {
                                ERR("The token behind \\u is not text, but (%d,%d,%d)\n",
    info->rtfClass, info->rtfMajor, info->rtfMinor);
                                RTFUngetToken(info);
                                break;
                        }
  }
  break;
 }
 case 141:
            RTFFlushOutputBuffer(info);
            ME_InsertEndRowFromCursor(info->editor, 0);
            break;
 case 135:
 case 130:
 case 134:
                RTFFlushOutputBuffer(info);
                ME_SetSelectionParaFormat(info->editor, &info->fmt);
                memset(&info->fmt, 0, sizeof(info->fmt));
                info->fmt.cbSize = sizeof(info->fmt);
  RTFPutUnicodeChar (info, '\r');
  if (info->editor->bEmulateVersion10) RTFPutUnicodeChar (info, '\n');
  break;
 case 139:
  RTFPutUnicodeChar (info, 0x00A0);
  break;
 case 129:
  RTFPutUnicodeChar (info, '\t');
  break;
 case 140:
  RTFPutUnicodeChar (info, 0x2011);
  break;
 case 149:
  RTFPutUnicodeChar (info, 0x2022);
  break;
 case 148:
  RTFPutUnicodeChar (info, 0x2014);
  break;
 case 146:
  RTFPutUnicodeChar (info, 0x2013);
  break;
        case 147:
                RTFPutUnicodeChar (info, ' ');
                break;
        case 145:
                RTFPutUnicodeChar (info, ' ');
                break;
 case 143:
  RTFPutUnicodeChar (info, 0x2018);
  break;
 case 132:
  RTFPutUnicodeChar (info, 0x2019);
  break;
 case 144:
  RTFPutUnicodeChar (info, 0x201C);
  break;
 case 133:
  RTFPutUnicodeChar (info, 0x201D);
  break;
        case 142:
                RTFPutUnicodeChar (info, 0x200E);
                break;
        case 131:
                RTFPutUnicodeChar (info, 0x200F);
                break;
        case 138:
                RTFPutUnicodeChar (info, 0x200D);
                break;
        case 137:
                RTFPutUnicodeChar (info, 0x200C);
                break;
 }
}
