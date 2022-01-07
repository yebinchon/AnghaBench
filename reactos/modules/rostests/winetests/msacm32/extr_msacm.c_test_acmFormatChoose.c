
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int afc ;
typedef int WAVEFORMATEX ;
struct TYPE_3__ {int cbStruct; int * pwfx; int member_0; } ;
typedef scalar_t__ MMRESULT ;
typedef int DWORD ;
typedef TYPE_1__ ACMFORMATCHOOSEW ;


 int ACM_METRIC_MAX_SIZE_FORMAT ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ MMSYSERR_INVALPARAM ;
 scalar_t__ acmFormatChooseW (TYPE_1__*) ;
 int acmMetrics (int *,int ,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_acmFormatChoose(void)
{
    ACMFORMATCHOOSEW afc = {0};
    WAVEFORMATEX *pwfx;
    DWORD sizeMax;
    MMRESULT rc;

    acmMetrics(((void*)0), ACM_METRIC_MAX_SIZE_FORMAT, &sizeMax);
    pwfx = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeMax);

    afc.cbStruct = sizeof(afc);
    afc.pwfx = pwfx;


    afc.cbStruct = sizeof(afc)-1;
    rc = acmFormatChooseW(&afc);
    ok(rc == MMSYSERR_INVALPARAM, "expected 0xb, got 0x%x\n", rc);
    afc.cbStruct = sizeof(afc);

    afc.pwfx = ((void*)0);
    rc = acmFormatChooseW(&afc);
    ok(rc == MMSYSERR_INVALPARAM, "expected 0xb, got 0x%x\n", rc);
    afc.pwfx = pwfx;

    HeapFree(GetProcessHeap(), 0, pwfx);
}
