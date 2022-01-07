
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int memcmp (int const*,char*,int) ;

__attribute__((used)) static BOOL text_richtext_filter(const BYTE *b, DWORD size)
{
    return size > 5 && !memcmp(b, "{\\rtf", 5);
}
