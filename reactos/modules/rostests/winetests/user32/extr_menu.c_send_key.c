
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int i ;
typedef int WORD ;
struct TYPE_6__ {int dwFlags; int wVk; } ;
struct TYPE_5__ {TYPE_2__ ki; } ;
struct TYPE_7__ {TYPE_1__ u; int type; } ;
typedef TYPE_3__ TEST_INPUT ;
typedef int INPUT ;


 int INPUT_KEYBOARD ;
 int KEYEVENTF_KEYUP ;
 int memset (TYPE_3__*,int ,int) ;
 int pSendInput (int,int *,int) ;

__attribute__((used)) static void send_key(WORD wVk)
{
    TEST_INPUT i[2];
    memset(i, 0, sizeof(i));
    i[0].type = i[1].type = INPUT_KEYBOARD;
    i[0].u.ki.wVk = i[1].u.ki.wVk = wVk;
    i[1].u.ki.dwFlags = KEYEVENTF_KEYUP;
    pSendInput(2, (INPUT *) i, sizeof(INPUT));
}
