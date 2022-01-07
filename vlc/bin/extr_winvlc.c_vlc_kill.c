
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int ReleaseSemaphore (int ,int,int *) ;

__attribute__((used)) static void vlc_kill(void *data)
{
    HANDLE *semp = data;

    ReleaseSemaphore(*semp, 1, ((void*)0));
}
