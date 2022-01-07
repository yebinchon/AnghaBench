
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 scalar_t__ ERROR_TIMEOUT ;
 int NULLHANDLE ;
 scalar_t__ vlc_DosWaitEventSemEx (int ,scalar_t__) ;

__attribute__((used)) static ULONG vlc_Sleep (ULONG ulTimeout)
{
    ULONG rc = vlc_DosWaitEventSemEx( NULLHANDLE, ulTimeout );

    return ( rc != ERROR_TIMEOUT ) ? rc : 0;
}
