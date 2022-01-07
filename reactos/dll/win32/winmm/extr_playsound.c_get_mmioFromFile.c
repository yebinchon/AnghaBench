
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int WCHAR ;
typedef int * LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ HMMIO ;


 int MMIO_ALLOCBUF ;
 int MMIO_DENYWRITE ;
 int MMIO_READ ;
 scalar_t__ SearchPathW (int *,scalar_t__,int *,int,int *,int **) ;
 scalar_t__ mmioOpenW (int *,int *,int) ;

__attribute__((used)) static HMMIO get_mmioFromFile(LPCWSTR lpszName)
{
    HMMIO ret;
    WCHAR buf[256];
    LPWSTR dummy;

    ret = mmioOpenW((LPWSTR)lpszName, ((void*)0),
                    MMIO_ALLOCBUF | MMIO_READ | MMIO_DENYWRITE);
    if (ret != 0) return ret;
    if (SearchPathW(((void*)0), lpszName, ((void*)0), sizeof(buf)/sizeof(buf[0]), buf, &dummy))
    {
        return mmioOpenW(buf, ((void*)0),
                         MMIO_ALLOCBUF | MMIO_READ | MMIO_DENYWRITE);
    }
    return 0;
}
