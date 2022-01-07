
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t UCHAR ;


 int CloseHandle (int *) ;
 int ** EntrypointMutexes ;
 size_t SOUND_DEVICE_TYPES ;

VOID
CleanupEntrypointMutexes()
{
    UCHAR i;


    for ( i = 0; i < SOUND_DEVICE_TYPES; ++ i )
    {
        if ( EntrypointMutexes[i] )
        {
            CloseHandle(EntrypointMutexes[i]);
            EntrypointMutexes[i] = ((void*)0);
        }
    }
}
