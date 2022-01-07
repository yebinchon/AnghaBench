
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPRECT ;
typedef int HDC ;
typedef int BOOL ;
 int FALSE ;
 int TRUE ;
 int UITOOLS95_DFC_ButtonCheckRadio (int ,int ,int,int ) ;
 int UITOOLS95_DFC_ButtonPush (int ,int ,int) ;

__attribute__((used)) static BOOL UITOOLS95_DrawFrameButton(HDC hdc, LPRECT rc, UINT uState)
{
    switch(uState & 0xff)
    {
        case 131:
            return UITOOLS95_DFC_ButtonPush(hdc, rc, uState);

        case 132:
        case 133:
            return UITOOLS95_DFC_ButtonCheckRadio(hdc, rc, uState, FALSE);

        case 129:
        case 128:
        case 130:
            return UITOOLS95_DFC_ButtonCheckRadio(hdc, rc, uState, TRUE);





    }

    return FALSE;
}
