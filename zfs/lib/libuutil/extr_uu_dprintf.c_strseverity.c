
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uu_dprintf_severity_t ;


 int TEXT_DOMAIN ;






 char const* dgettext (int ,char*) ;

__attribute__((used)) static const char *
strseverity(uu_dprintf_severity_t severity)
{
 switch (severity) {
 case 129:
  return (dgettext(TEXT_DOMAIN, "silent"));
 case 132:
  return (dgettext(TEXT_DOMAIN, "FATAL"));
 case 128:
  return (dgettext(TEXT_DOMAIN, "WARNING"));
 case 130:
  return (dgettext(TEXT_DOMAIN, "note"));
 case 131:
  return (dgettext(TEXT_DOMAIN, "info"));
 case 133:
  return (dgettext(TEXT_DOMAIN, "debug"));
 default:
  return (dgettext(TEXT_DOMAIN, "unspecified"));
 }
}
