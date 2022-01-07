
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
typedef int UINTN ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_13__ {int WaitForEvent; } ;
struct TYPE_12__ {TYPE_3__* ConIn; } ;
struct TYPE_9__ {int UnicodeChar; int ScanCode; } ;
struct TYPE_8__ {int KeyShiftState; } ;
struct TYPE_11__ {int UnicodeChar; int ScanCode; TYPE_2__ Key; TYPE_1__ KeyState; } ;
struct TYPE_10__ {int ReadKeyStroke; int ReadKeyStrokeEx; int WaitForKey; } ;
typedef int EFI_STATUS ;
typedef TYPE_3__ EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL ;
typedef TYPE_4__ EFI_KEY_DATA ;
typedef TYPE_4__ EFI_INPUT_KEY ;
typedef int EFI_GUID ;
typedef scalar_t__ BOOLEAN ;


 TYPE_7__* BS ;
 int EFI_ALT_PRESSED ;
 int EFI_CONTROL_PRESSED ;
 scalar_t__ EFI_ERROR (int ) ;
 int EFI_LEFT_ALT_PRESSED ;
 int EFI_LEFT_CONTROL_PRESSED ;
 int EFI_RIGHT_ALT_PRESSED ;
 int EFI_RIGHT_CONTROL_PRESSED ;
 int EFI_SHIFT_STATE_VALID ;
 int EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID ;
 int KEYPRESS (int ,int ,int ) ;
 int LibLocateProtocol (int *,int **) ;
 TYPE_6__* ST ;
 scalar_t__ TRUE ;
 int uefi_call_wrapper (int ,int,...) ;

EFI_STATUS console_key_read(UINT64 *key, BOOLEAN wait) {
        EFI_GUID EfiSimpleTextInputExProtocolGuid = EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID;
        static EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL *TextInputEx;
        static BOOLEAN checked;
        UINTN index;
        EFI_INPUT_KEY k;
        EFI_STATUS err;

        if (!checked) {
                err = LibLocateProtocol(&EfiSimpleTextInputExProtocolGuid, (VOID **)&TextInputEx);
                if (EFI_ERROR(err))
                        TextInputEx = ((void*)0);

                checked = TRUE;
        }


        if (wait)
                uefi_call_wrapper(BS->WaitForEvent, 3, 1, &ST->ConIn->WaitForKey, &index);

        if (TextInputEx) {
                EFI_KEY_DATA keydata;
                UINT64 keypress;

                err = uefi_call_wrapper(TextInputEx->ReadKeyStrokeEx, 2, TextInputEx, &keydata);
                if (!EFI_ERROR(err)) {
                        UINT32 shift = 0;


                        if (keydata.KeyState.KeyShiftState & EFI_SHIFT_STATE_VALID) {
                                if (keydata.KeyState.KeyShiftState & (EFI_RIGHT_CONTROL_PRESSED|EFI_LEFT_CONTROL_PRESSED))
                                        shift |= EFI_CONTROL_PRESSED;
                                if (keydata.KeyState.KeyShiftState & (EFI_RIGHT_ALT_PRESSED|EFI_LEFT_ALT_PRESSED))
                                        shift |= EFI_ALT_PRESSED;
                        };


                        keypress = KEYPRESS(shift, keydata.Key.ScanCode, keydata.Key.UnicodeChar);
                        if (keypress > 0) {
                                *key = keypress;
                                return 0;
                        }
                }
        }






        err = uefi_call_wrapper(ST->ConIn->ReadKeyStroke, 2, ST->ConIn, &k);
        if (EFI_ERROR(err))
                return err;

        *key = KEYPRESS(0, k.ScanCode, k.UnicodeChar);
        return 0;
}
