
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XtPointer ;
typedef int XtEventHandler ;
typedef int Widget ;


 int False ;
 int KeyPressMask ;
 int XtAddEventHandler (int ,int ,int ,int ,int ) ;
 int add_mnemonic_grabs (int ,int ) ;
 scalar_t__ mnemonic_event ;

__attribute__((used)) static void
activate_dialog_mnemonics(Widget dialog)
{
    if (!dialog)
 return;

    XtAddEventHandler(dialog, KeyPressMask, False,
      (XtEventHandler) mnemonic_event, (XtPointer) ((void*)0));
    add_mnemonic_grabs(dialog, dialog);
}
