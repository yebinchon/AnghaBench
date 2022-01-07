
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errstr ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int snprintf (char*,int,char*,int) ;

char *
sa_errorstr(int err)
{
 static char errstr[32];
 char *ret = ((void*)0);

 switch (err) {
 case 137:
  ret = dgettext(TEXT_DOMAIN, "ok");
  break;
 case 142:
  ret = dgettext(TEXT_DOMAIN, "path doesn't exist");
  break;
 case 147:
  ret = dgettext(TEXT_DOMAIN, "no memory");
  break;
 case 157:
  ret = dgettext(TEXT_DOMAIN, "name in use");
  break;
 case 161:
  ret = dgettext(TEXT_DOMAIN, "bad path");
  break;
 case 143:
  ret = dgettext(TEXT_DOMAIN, "no such group");
  break;
 case 158:
  ret = dgettext(TEXT_DOMAIN, "configuration error");
  break;
 case 129:
  ret = dgettext(TEXT_DOMAIN, "system error");
  break;
 case 130:
  ret = dgettext(TEXT_DOMAIN, "syntax error");
  break;
 case 146:
  ret = dgettext(TEXT_DOMAIN, "no permission");
  break;
 case 159:
  ret = dgettext(TEXT_DOMAIN, "busy");
  break;
 case 141:
  ret = dgettext(TEXT_DOMAIN, "no such property");
  break;
 case 156:
  ret = dgettext(TEXT_DOMAIN, "invalid name");
  break;
 case 154:
  ret = dgettext(TEXT_DOMAIN, "invalid protocol");
  break;
 case 151:
  ret = dgettext(TEXT_DOMAIN, "operation not allowed");
  break;
 case 160:
  ret = dgettext(TEXT_DOMAIN, "bad property value");
  break;
 case 153:
  ret = dgettext(TEXT_DOMAIN, "invalid security type");
  break;
 case 138:
  ret = dgettext(TEXT_DOMAIN, "security type not found");
  break;
 case 128:
  ret = dgettext(TEXT_DOMAIN, "property value conflict");
  break;
 case 150:
  ret = dgettext(TEXT_DOMAIN, "not implemented");
  break;
 case 155:
  ret = dgettext(TEXT_DOMAIN, "invalid path");
  break;
 case 148:
  ret = dgettext(TEXT_DOMAIN, "operation not supported");
  break;
 case 133:
  ret = dgettext(TEXT_DOMAIN, "property not valid for group");
  break;
 case 149:
  ret = dgettext(TEXT_DOMAIN, "not shared");
  break;
 case 140:
  ret = dgettext(TEXT_DOMAIN, "no such resource");
  break;
 case 132:
  ret = dgettext(TEXT_DOMAIN, "resource name required");
  break;
 case 152:
  ret = dgettext(TEXT_DOMAIN, "errors from multiple protocols");
  break;
 case 134:
  ret = dgettext(TEXT_DOMAIN, "path is a subpath of share");
  break;
 case 135:
  ret = dgettext(TEXT_DOMAIN, "path is parent of a share");
  break;
 case 144:
  ret = dgettext(TEXT_DOMAIN, "protocol requires a section");
  break;
 case 145:
  ret = dgettext(TEXT_DOMAIN, "properties not found");
  break;
 case 139:
  ret = dgettext(TEXT_DOMAIN, "section not found");
  break;
 case 136:
  ret = dgettext(TEXT_DOMAIN, "passwords must be encrypted");
  break;
 case 131:
  ret = dgettext(TEXT_DOMAIN, "path or file is already shared");
  break;
 default:
  (void) snprintf(errstr, sizeof (errstr),
      dgettext(TEXT_DOMAIN, "unknown %d"), err);
  ret = errstr;
 }
 return (ret);
}
