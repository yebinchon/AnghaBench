
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;


 scalar_t__ GetACP () ;
 int _mkdir (int *) ;
 int _wmkdir (int *) ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int vim_free (int *) ;

int
mch_mkdir(char_u *name)
{
    return _mkdir(name);
}
