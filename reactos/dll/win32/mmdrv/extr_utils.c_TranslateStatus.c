
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
 int GetLastError () ;
 int MMSYSERR_ALLOCATED ;
 int MMSYSERR_BADDEVICEID ;
 int MMSYSERR_ERROR ;
 int MMSYSERR_INVALPARAM ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOMEM ;
 int MMSYSERR_NOTSUPPORTED ;


DWORD TranslateStatus(void)
{
    switch(GetLastError())
    {
        case 128 :
        case 131 :
            return MMSYSERR_NOERROR;

        case 134 :
            return MMSYSERR_ALLOCATED;

        case 129 :
        case 132 :
            return MMSYSERR_NOTSUPPORTED;

        case 130 :
            return MMSYSERR_NOMEM;

        case 135 :
            return MMSYSERR_BADDEVICEID;

        case 133 :
            return MMSYSERR_INVALPARAM;

        default :
            return MMSYSERR_ERROR;
    };
}
