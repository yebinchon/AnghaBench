
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FZ_ADOBE_CNS ;
 int FZ_ADOBE_GB ;
 int FZ_ADOBE_JAPAN ;
 int FZ_ADOBE_KOREA ;
 int strcmp (char const*,char*) ;

int
fz_lookup_cjk_ordering_by_language(const char *name)
{
 if (!strcmp(name, "zh-Hant")) return FZ_ADOBE_CNS;
 if (!strcmp(name, "zh-TW")) return FZ_ADOBE_CNS;
 if (!strcmp(name, "zh-HK")) return FZ_ADOBE_CNS;
 if (!strcmp(name, "zh-Hans")) return FZ_ADOBE_GB;
 if (!strcmp(name, "zh-CN")) return FZ_ADOBE_GB;
 if (!strcmp(name, "ja")) return FZ_ADOBE_JAPAN;
 if (!strcmp(name, "ko")) return FZ_ADOBE_KOREA;
 return -1;
}
