
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static const char *full_font_name(const char **name)
{
 if (!strcmp(*name, "Cour")) return "Courier";
 if (!strcmp(*name, "Helv")) return "Helvetica";
 if (!strcmp(*name, "TiRo")) return "Times-Roman";
 if (!strcmp(*name, "Symb")) return "Symbol";
 if (!strcmp(*name, "ZaDb")) return "ZapfDingbats";
 return *name = "Helv", "Helvetica";
}
