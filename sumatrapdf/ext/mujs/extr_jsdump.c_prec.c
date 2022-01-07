
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum js_AstType { ____Placeholder_js_AstType } js_AstType ;
__attribute__((used)) static int prec(enum js_AstType type)
{
 switch (type) {
 case 192:
 case 163:
 case 147:
 case 135:
 case 140:
 case 130:
 case 148:
 case 132:
 case 167:
 case 133:
 case 190:
 case 146:
  return 170;

 case 166:
 case 161:
 case 154:
 case 173:
 case 149:
  return 160;

 case 143:
 case 144:
  return 150;

 case 170:
 case 128:
 case 131:
 case 141:
 case 142:
 case 145:
 case 150:
 case 176:
 case 157:
  return 140;

 case 153:
 case 169:
 case 152:
  return 130;

 case 134:
 case 191:
  return 120;

 case 129:
 case 138:
 case 139:
  return 110;

 case 162:
 case 160:
 case 165:
 case 159:
 case 164:
 case 155:
  return 100;

 case 136:
 case 137:
 case 151:
 case 168:
  return 90;

 case 177: return 80;
 case 174: return 70;
 case 175: return 60;
 case 158: return 50;
 case 156: return 40;

 case 171:
  return 30;

 case 189:
 case 182:
 case 184:
 case 183:
 case 188:
 case 179:
 case 181:
 case 180:
 case 178:
 case 187:
 case 185:
 case 186:
  return 20;



 case 172:
  return 10;

 default:
  return 0;
 }
}
