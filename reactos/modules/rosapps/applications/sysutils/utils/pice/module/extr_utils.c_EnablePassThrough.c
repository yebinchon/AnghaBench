
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PULONG ;


 int cli () ;
 int inl (int ) ;
 int outl (int,int ) ;
 int restore_flags (int) ;
 int save_flags (int) ;

void EnablePassThrough(void)
{
 ULONG oldCF8,flags;

 save_flags(flags);
 cli();

 oldCF8 = inl((PULONG)0xcf8);
 outl(0x80000050,(PULONG)0xcf8);
 outl(inl((PULONG)0xcfc)|0x00000020,(PULONG)0xcfc);
 outl(oldCF8,(PULONG)0xcf8);

 restore_flags(flags);
}
