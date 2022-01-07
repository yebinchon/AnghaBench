
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int * logAttr; scalar_t__ text_length; } ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_InvalidateUniscribeData (TYPE_1__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;

__attribute__((used)) static inline void text_buffer_changed(EDITSTATE *es)
{
    es->text_length = (UINT)-1;

    HeapFree( GetProcessHeap(), 0, es->logAttr );
    es->logAttr = ((void*)0);
    EDIT_InvalidateUniscribeData(es);
}
