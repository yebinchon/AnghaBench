
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPWSTR ;


 int lstrlenW (char*) ;
 char* strchrW (char*,char) ;
 char* strdupW (char*) ;

__attribute__((used)) static LPWSTR get_ini_field(LPWSTR buf, int field)
{
    LPWSTR beg, end;
    int i = 1;

    if (field == 0)
        return strdupW(buf);

    beg = buf;
    while ((end = strchrW(beg, ',')) && i < field)
    {
        beg = end + 1;
        while (*beg == ' ')
            beg++;

        i++;
    }

    end = strchrW(beg, ',');
    if (!end)
        end = beg + lstrlenW(beg);

    *end = '\0';
    return strdupW(beg);
}
