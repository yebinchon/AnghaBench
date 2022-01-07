
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOLEAN ;


 int* RtlpShortIllegals ;

__attribute__((used)) static BOOLEAN
RtlpIsShortIllegal(const WCHAR Char)
{
    return (Char < 128 && (RtlpShortIllegals[Char / 32] & (1 << (Char % 32))));
}
