
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key2 ;
typedef int key1 ;


 int LCMAP_SORTKEY ;
 int LCMapStringA (int ,int ,char const*,int,char*,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int compare_string3(const void *e1, const void *e2)
{
    const char *s1 = *(const char *const *)e1;
    const char *s2 = *(const char *const *)e2;
    char key1[256], key2[256];

    LCMapStringA(0, LCMAP_SORTKEY, s1, -1, key1, sizeof(key1));
    LCMapStringA(0, LCMAP_SORTKEY, s2, -1, key2, sizeof(key2));
    return strcmp(key1, key2);
}
