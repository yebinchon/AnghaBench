
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPSTR ;
typedef int CHAR ;


 int CURR_DIR ;
 int GetTempFileNameA (int ,char*,int ,int *) ;
 int MAX_PATH ;
 int strcpy (scalar_t__,scalar_t__) ;
 scalar_t__ strrchr (int *,char) ;

__attribute__((used)) static void get_temp_filename(LPSTR path)
{
    CHAR temp[MAX_PATH];
    LPSTR ptr;

    GetTempFileNameA(CURR_DIR, "set", 0, temp);
    ptr = strrchr(temp, '\\');

    strcpy(path, ptr + 1);
}
