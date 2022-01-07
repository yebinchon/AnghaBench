
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PLIST_ENTRY ;
typedef int PKSPIN_LOCK ;


 int InsertTailList (int ,int ) ;

VOID TcpipInterlockedInsertTailList( PLIST_ENTRY ListHead,
         PLIST_ENTRY Item,
         PKSPIN_LOCK Lock ) {
    InsertTailList( ListHead, Item );
}
