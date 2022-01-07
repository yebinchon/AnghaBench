
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KdPrint (char*) ;
 int LOAD_NLS (int ) ;
 int init_nls_big5 ;
 int init_nls_cp1251 ;
 int init_nls_cp1255 ;
 int init_nls_cp437 ;
 int init_nls_cp737 ;
 int init_nls_cp775 ;
 int init_nls_cp850 ;
 int init_nls_cp852 ;
 int init_nls_cp855 ;
 int init_nls_cp857 ;
 int init_nls_cp860 ;
 int init_nls_cp861 ;
 int init_nls_cp862 ;
 int init_nls_cp863 ;
 int init_nls_cp864 ;
 int init_nls_cp865 ;
 int init_nls_cp866 ;
 int init_nls_cp869 ;
 int init_nls_cp874 ;
 int init_nls_cp932 ;
 int init_nls_cp936 ;
 int init_nls_cp949 ;
 int init_nls_cp950 ;
 int init_nls_euc_jp ;
 int init_nls_euc_kr ;
 int init_nls_gb2312 ;
 int init_nls_iso8859_1 ;
 int init_nls_iso8859_13 ;
 int init_nls_iso8859_14 ;
 int init_nls_iso8859_15 ;
 int init_nls_iso8859_2 ;
 int init_nls_iso8859_3 ;
 int init_nls_iso8859_4 ;
 int init_nls_iso8859_5 ;
 int init_nls_iso8859_6 ;
 int init_nls_iso8859_7 ;
 int init_nls_iso8859_8 ;
 int init_nls_iso8859_9 ;
 int init_nls_koi8_r ;
 int init_nls_koi8_ru ;
 int init_nls_koi8_u ;
 int init_nls_sjis ;
 int init_nls_tis_620 ;
 int init_nls_utf8 ;
 int nls_lock ;
 int spin_lock_init (int *) ;
 int * tables ;

int
RfsdLoadAllNls()
{
    int rc;

    tables = ((void*)0);
    spin_lock_init(&nls_lock);





    LOAD_NLS(init_nls_utf8);
    KdPrint(("RfsdLoadAllNls: succeed to load all codepages ...\n"));

errorout:

    return rc;
}
