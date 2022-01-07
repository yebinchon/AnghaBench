
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int UNLOAD_NLS (int ) ;
 int exit_nls_cp1251 ;
 int exit_nls_cp1255 ;
 int exit_nls_cp437 ;
 int exit_nls_cp737 ;
 int exit_nls_cp775 ;
 int exit_nls_cp850 ;
 int exit_nls_cp852 ;
 int exit_nls_cp855 ;
 int exit_nls_cp857 ;
 int exit_nls_cp860 ;
 int exit_nls_cp861 ;
 int exit_nls_cp862 ;
 int exit_nls_cp863 ;
 int exit_nls_cp864 ;
 int exit_nls_cp865 ;
 int exit_nls_cp866 ;
 int exit_nls_cp869 ;
 int exit_nls_cp874 ;
 int exit_nls_cp932 ;
 int exit_nls_cp936 ;
 int exit_nls_cp949 ;
 int exit_nls_cp950 ;
 int exit_nls_euc_jp ;
 int exit_nls_iso8859_1 ;
 int exit_nls_iso8859_13 ;
 int exit_nls_iso8859_14 ;
 int exit_nls_iso8859_15 ;
 int exit_nls_iso8859_2 ;
 int exit_nls_iso8859_3 ;
 int exit_nls_iso8859_4 ;
 int exit_nls_iso8859_5 ;
 int exit_nls_iso8859_6 ;
 int exit_nls_iso8859_7 ;
 int exit_nls_iso8859_9 ;
 int exit_nls_koi8_r ;
 int exit_nls_koi8_ru ;
 int exit_nls_koi8_u ;
 int exit_nls_utf8 ;
 int init_nls_ascii ;
 int init_nls_cp1250 ;

VOID
Ext2UnloadAllNls()
{
    UNLOAD_NLS(exit_nls_utf8);
}
