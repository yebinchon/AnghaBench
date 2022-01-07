
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szName ;
typedef char char_u ;


 scalar_t__ FAIL ;
 int FALSE ;
 int TRUE ;
 int _MAX_PATH ;
 scalar_t__ mch_FullName (char*,char*,int,int) ;
 scalar_t__ pathcmp (char*,char*,int) ;

int
mch_isFullName(char_u *fname)
{






    char szName[_MAX_PATH + 1];



    if ((fname[0] && fname[1] == ':' && (fname[2] == '/' || fname[2] == '\\'))
     || (fname[0] == fname[1] && (fname[0] == '/' || fname[0] == '\\')))
 return TRUE;


    if (mch_FullName(fname, szName, sizeof(szName) - 1, FALSE) == FAIL)
 return FALSE;

    return pathcmp(fname, szName, -1) == 0;
}
