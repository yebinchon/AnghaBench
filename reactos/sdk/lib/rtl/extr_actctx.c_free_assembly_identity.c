
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assembly_identity {int type; int language; int public_key; int arch; int name; } ;


 int RtlFreeHeap (int ,int ,int ) ;
 int RtlGetProcessHeap () ;

__attribute__((used)) static void free_assembly_identity(struct assembly_identity *ai)
{
    RtlFreeHeap( RtlGetProcessHeap(), 0, ai->name );
    RtlFreeHeap( RtlGetProcessHeap(), 0, ai->arch );
    RtlFreeHeap( RtlGetProcessHeap(), 0, ai->public_key );
    RtlFreeHeap( RtlGetProcessHeap(), 0, ai->language );
    RtlFreeHeap( RtlGetProcessHeap(), 0, ai->type );
}
