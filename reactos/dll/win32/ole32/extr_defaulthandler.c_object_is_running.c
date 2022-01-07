
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IRunnableObject_iface; } ;
typedef TYPE_1__ DefaultHandler ;
typedef int BOOL ;


 int IRunnableObject_IsRunning (int *) ;

__attribute__((used)) static inline BOOL object_is_running(DefaultHandler *This)
{
    return IRunnableObject_IsRunning(&This->IRunnableObject_iface);
}
