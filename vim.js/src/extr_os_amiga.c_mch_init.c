
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IntuitionBase {int dummy; } ;
typedef int UBYTE ;
typedef scalar_t__ BPTR ;


 int Columns ;
 scalar_t__ Enable_Abort ;
 scalar_t__ Input () ;
 struct IntuitionBase* IntuitionBase ;
 int IsInteractive (scalar_t__) ;
 scalar_t__ OpenLibrary (int *,long) ;
 scalar_t__ Output () ;
 int Rows ;
 char* _ (char*) ;
 int mch_errmsg (char*) ;
 int mch_exit (int) ;
 int out_flush () ;
 scalar_t__ raw_in ;
 scalar_t__ raw_out ;
 int * wb_window ;

void
mch_init()
{
    static char intlibname[] = "intuition.library";




    Columns = 80;
    Rows = 24;




    if (raw_in == (BPTR)((void*)0))
    {
 raw_in = Input();
 raw_out = Output();





 if (!IsInteractive(raw_in))
     raw_in = raw_out;
 else if (!IsInteractive(raw_out))
     raw_out = raw_in;
    }

    out_flush();

    wb_window = ((void*)0);

    if ((IntuitionBase = (struct IntuitionBase *)
    OpenLibrary((UBYTE *)intlibname, 0L)) == ((void*)0))
    {
 mch_errmsg(_("cannot open "));
 mch_errmsg(intlibname);
 mch_errmsg("!?\n");
 mch_exit(3);
    }

}
