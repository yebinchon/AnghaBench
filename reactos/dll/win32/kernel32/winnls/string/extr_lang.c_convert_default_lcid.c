
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LCTYPE ;
typedef scalar_t__ LCID ;


 scalar_t__ ConvertDefaultLocale (scalar_t__) ;
 scalar_t__ LOCALE_NEUTRAL ;
 scalar_t__ LOCALE_SYSTEM_DEFAULT ;
 scalar_t__ LOCALE_USER_DEFAULT ;
 scalar_t__ lcid_LC_COLLATE ;
 scalar_t__ lcid_LC_CTYPE ;
 scalar_t__ lcid_LC_MEASUREMENT ;
 scalar_t__ lcid_LC_MONETARY ;
 scalar_t__ lcid_LC_NUMERIC ;
 scalar_t__ lcid_LC_PAPER ;
 scalar_t__ lcid_LC_TELEPHONE ;
 scalar_t__ lcid_LC_TIME ;

__attribute__((used)) static LCID convert_default_lcid( LCID lcid, LCTYPE lctype )
{
    if (lcid == LOCALE_SYSTEM_DEFAULT ||
        lcid == LOCALE_USER_DEFAULT ||
        lcid == LOCALE_NEUTRAL)
    {
        LCID default_id = 0;

        switch(lctype & 0xffff)
        {
        case 132:
            default_id = lcid_LC_COLLATE;
            break;

        case 223:
        case 215:
        case 214:
        case 213:
        case 212:
        case 211:
            default_id = lcid_LC_CTYPE;
            break;

        case 219:
        case 218:
        case 206:
        case 201:
        case 199:
        case 198:
        case 197:
        case 194:
        case 193:
        case 192:
        case 166:
        case 155:
        case 153:
        case 152:
        case 138:
        case 137:
            default_id = lcid_LC_MONETARY;
            break;

        case 210:
        case 209:
        case 204:
        case 200:
        case 157:
        case 156:

        case 136:
        case 135:


        case 134:
        case 131:
            default_id = lcid_LC_NUMERIC;
            break;

        case 222:
        case 221:
        case 217:
        case 216:
        case 208:
        case 207:
        case 205:
        case 202:
        case 196:
        case 191:
        case 190:
        case 189:
        case 188:
        case 187:
        case 186:
        case 185:
        case 184:
        case 183:
        case 182:
        case 181:
        case 180:
        case 179:
        case 174:
        case 173:
        case 172:
        case 171:
        case 170:
        case 169:
        case 168:
        case 167:
        case 178:
        case 177:
        case 176:
        case 175:
        case 165:
        case 164:
        case 163:
        case 162:
        case 161:
        case 160:
        case 159:
        case 158:

        case 154:
        case 151:
        case 146:
        case 145:
        case 144:
        case 143:
        case 142:
        case 141:
        case 140:
        case 139:
        case 150:
        case 149:
        case 148:
        case 147:
        case 133:







        case 130:
        case 129:
        case 128:
            default_id = lcid_LC_TIME;
            break;

        case 195:
            default_id = lcid_LC_PAPER;
            break;

        case 203:
            default_id = lcid_LC_MEASUREMENT;
            break;

        case 220:
            default_id = lcid_LC_TELEPHONE;
            break;
        }
        if (default_id) lcid = default_id;
    }
    return ConvertDefaultLocale( lcid );
}
