
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ PRTL_SPLAY_LINKS ;
typedef scalar_t__ BOOLEAN ;


 int RtlInsertAsLeftChild (scalar_t__,scalar_t__) ;
 int RtlInsertAsRightChild (scalar_t__,scalar_t__) ;
 scalar_t__ RtlLeftChild (scalar_t__) ;
 scalar_t__ RtlParent (scalar_t__) ;
 scalar_t__ RtlRightChild (scalar_t__) ;

__attribute__((used)) static
VOID
FixupChildLinks(PRTL_SPLAY_LINKS Links, BOOLEAN Root, BOOLEAN LeftChild)
{
    if (RtlLeftChild(Links))
    {
        RtlInsertAsLeftChild(Links, RtlLeftChild(Links));
    }

    if (RtlRightChild(Links))
    {
        RtlInsertAsRightChild(Links, RtlRightChild(Links));
    }

    if (!Root)
    {
        if (LeftChild)
        {
            RtlInsertAsLeftChild(RtlParent(Links), Links);
        }
        else
        {
            RtlInsertAsRightChild(RtlParent(Links), Links);
        }
    }
}
