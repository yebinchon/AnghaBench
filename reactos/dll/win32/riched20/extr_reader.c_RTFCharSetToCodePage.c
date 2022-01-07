
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ciACP; } ;
typedef int RTF_Info ;
typedef int DWORD ;
typedef TYPE_1__ CHARSETINFO ;






 int CP_ACP ;
 int CP_MACCP ;
 int CP_OEMCP ;
 int CP_SYMBOL ;


 int ERR (char*,int) ;
 int TCI_SRCCHARSET ;


 int TranslateCharsetInfo (int*,TYPE_1__*,int ) ;


int
RTFCharSetToCodePage(RTF_Info *info, int charset)
{
 switch (charset)
        {
                case 146:
                        return 1252;
                case 142:
                        return CP_ACP;
                case 131:
                        return CP_SYMBOL;
                case 135:
                        return CP_MACCP;
                case 132:
                        return 932;
                case 138:
                        return 949;
                case 136:
                        return 1361;
                case 140:
                        return 936;
                case 143:
                        return 950;
                case 139:
                        return 1253;
                case 129:
                        return 1254;
                case 128:
                        return 1258;
                case 137:
                        return 1255;
                case 145:
                        return 1256;
                case 144:
                        return 1257;
                case 133:
                        return 1251;
                case 130:
                        return 874;
                case 141:
                        return 1250;
                case 134:
                        return CP_OEMCP;
                default:
  {
                        CHARSETINFO csi;
                        DWORD n = charset;



                        if (!TranslateCharsetInfo(&n, &csi, TCI_SRCCHARSET))
                                ERR("unknown charset %d\n", charset);
   else
                                return csi.ciACP;
  }
 }
        return 0;
}
