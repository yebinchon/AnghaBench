
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BufMapType ;
 int BufferType ;
 int CurrentType ;
 int DictionaryType ;
 int FunctionType ;
 int IterType ;
 int ListType ;
 int LoaderType ;
 int OptionsType ;
 int OutputType ;
 int PYTYPE_READY (int ) ;
 int RangeType ;
 int TabListType ;
 int TabPageType ;
 int WinListType ;
 int WindowType ;

__attribute__((used)) static int
init_types(void)
{
    PYTYPE_READY(IterType);
    PYTYPE_READY(BufferType);
    PYTYPE_READY(RangeType);
    PYTYPE_READY(WindowType);
    PYTYPE_READY(TabPageType);
    PYTYPE_READY(BufMapType);
    PYTYPE_READY(WinListType);
    PYTYPE_READY(TabListType);
    PYTYPE_READY(CurrentType);
    PYTYPE_READY(DictionaryType);
    PYTYPE_READY(ListType);
    PYTYPE_READY(FunctionType);
    PYTYPE_READY(OptionsType);
    PYTYPE_READY(OutputType);
    PYTYPE_READY(LoaderType);
    return 0;
}
