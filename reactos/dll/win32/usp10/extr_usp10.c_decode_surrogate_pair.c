
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 scalar_t__ IS_SURROGATE_PAIR (int const,int const) ;
 int TRACE (char*,int const,int const,int) ;

__attribute__((used)) static DWORD decode_surrogate_pair(const WCHAR *str, unsigned int index, unsigned int end)
{
    if (index < end-1 && IS_SURROGATE_PAIR(str[index],str[index+1]))
    {
        DWORD ch = 0x10000 + ((str[index] - 0xd800) << 10) + (str[index+1] - 0xdc00);
        TRACE("Surrogate Pair %x %x => %x\n",str[index], str[index+1], ch);
        return ch;
    }
    return 0;
}
