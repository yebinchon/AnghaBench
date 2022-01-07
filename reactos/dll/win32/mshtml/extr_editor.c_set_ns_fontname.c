
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsICommandParams ;
typedef int HTMLDocument ;


 int NSCMD_FONTFACE ;
 int NSSTATE_ATTRIBUTE ;
 int * create_nscommand_params () ;
 int do_ns_command (int *,int ,int *) ;
 int nsICommandParams_Release (int *) ;
 int nsICommandParams_SetCStringValue (int *,int ,char const*) ;

__attribute__((used)) static void set_ns_fontname(HTMLDocument *This, const char *fontname)
{
    nsICommandParams *nsparam = create_nscommand_params();

    nsICommandParams_SetCStringValue(nsparam, NSSTATE_ATTRIBUTE, fontname);
    do_ns_command(This, NSCMD_FONTFACE, nsparam);
    nsICommandParams_Release(nsparam);
}
