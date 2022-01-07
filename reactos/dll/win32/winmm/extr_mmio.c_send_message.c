
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IOProcList {scalar_t__ is_unicode; int (* pIOProc ) (int ,int ,int ,int ) ;} ;
typedef int LRESULT ;
typedef int LPSTR ;
typedef scalar_t__ LPMMIOINFO ;
typedef int LPARAM ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ERR (char*) ;
 int FIXME (char*) ;
 int MMSYSERR_ERROR ;
 int MMSYSERR_INVALPARAM ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static LRESULT send_message(struct IOProcList* ioProc, LPMMIOINFO mmioinfo,
                             DWORD wMsg, LPARAM lParam1,
                             LPARAM lParam2, BOOL is_unicode)
{
    LRESULT result = MMSYSERR_ERROR;
    LPARAM lp1 = lParam1, lp2 = lParam2;

    if (!ioProc) {
 ERR("ioProc NULL\n");
 return MMSYSERR_INVALPARAM;
    }

    if (ioProc->is_unicode != is_unicode) {

        FIXME("NIY 32 A<=>W mapping\n");
    }
    result = (ioProc->pIOProc)((LPSTR)mmioinfo, wMsg, lp1, lp2);







    return result;
}
