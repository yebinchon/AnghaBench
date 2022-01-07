
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {struct TYPE_4__* Flink; struct TYPE_4__* Blink; } ;
typedef TYPE_1__* PLIST_ENTRY ;



__attribute__((used)) static VOID
InsertAfterEntry(PLIST_ENTRY Previous,
                 PLIST_ENTRY Entry)



{
    Previous->Flink->Blink = Entry;

    Entry->Flink = Previous->Flink;
    Entry->Blink = Previous;

    Previous->Flink = Entry;
}
