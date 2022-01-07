
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;






 int TYMED_ENHMF ;
 int TYMED_GDI ;
 int TYMED_HGLOBAL ;
 int TYMED_MFPICT ;

__attribute__((used)) static inline DWORD tymed_from_cf( DWORD cf )
{
    switch( cf )
    {
    case 131: return TYMED_GDI;
    case 128: return TYMED_MFPICT;
    case 129: return TYMED_ENHMF;
    case 130:
    default: return TYMED_HGLOBAL;
    }
}
