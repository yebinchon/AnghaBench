
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_thread {int killed; } ;
typedef struct vlc_thread* PVOID ;


 scalar_t__ likely (int ) ;

__attribute__((used)) static void vlc_cancel_self (PVOID self)
{
    struct vlc_thread *th = self;

    if (likely(th != ((void*)0)))
        th->killed = 1;
}
