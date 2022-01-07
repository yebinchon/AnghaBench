
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITextRange ;
typedef int const IRichEditOleImpl ;


 int IID_Igetrichole ;
 int ITextRange_QueryInterface (int *,int *,void**) ;

__attribute__((used)) static inline const IRichEditOleImpl *get_range_reole(ITextRange *range)
{
    IRichEditOleImpl *reole = ((void*)0);
    ITextRange_QueryInterface(range, &IID_Igetrichole, (void**)&reole);
    return reole;
}
