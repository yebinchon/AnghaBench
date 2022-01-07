
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UCHAR ;
typedef int MMRESULT ;


 int CleanupEntrypointMutexes () ;
 int * CreateMutex (int *,int ,int *) ;
 int ** EntrypointMutexes ;
 int FALSE ;
 int GetLastError () ;
 int MMSYSERR_NOERROR ;
 size_t SOUND_DEVICE_TYPES ;
 int Win32ErrorToMmResult (int ) ;

MMRESULT
InitEntrypointMutexes()
{
    UCHAR i;
    MMRESULT Result = MMSYSERR_NOERROR;


    for ( i = 0; i < SOUND_DEVICE_TYPES; ++ i )
    {
        EntrypointMutexes[i] = ((void*)0);
    }


    for ( i = 0; i < SOUND_DEVICE_TYPES; ++ i )
    {
        EntrypointMutexes[i] = CreateMutex(((void*)0), FALSE, ((void*)0));

        if ( ! EntrypointMutexes[i] )
        {
            Result = Win32ErrorToMmResult(GetLastError());


            CleanupEntrypointMutexes();
            break;
        }
    }

    return Result;
}
