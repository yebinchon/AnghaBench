
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteObject (scalar_t__) ;
 int FreeLibrary (scalar_t__) ;
 int IMultiLanguage2_Release (scalar_t__) ;
 scalar_t__ TLS_OUT_OF_INDEXES ;
 int TlsFree (scalar_t__) ;
 int close_gecko () ;
 scalar_t__ display_dc ;
 int free_strings () ;
 scalar_t__ mlang ;
 scalar_t__ mshtml_tls ;
 int release_typelib () ;
 scalar_t__ shdoclc ;

__attribute__((used)) static void process_detach(void)
{
    close_gecko();
    release_typelib();

    if(shdoclc)
        FreeLibrary(shdoclc);
    if(mshtml_tls != TLS_OUT_OF_INDEXES)
        TlsFree(mshtml_tls);
    if(display_dc)
        DeleteObject(display_dc);
    if(mlang)
        IMultiLanguage2_Release(mlang);

    free_strings();
}
