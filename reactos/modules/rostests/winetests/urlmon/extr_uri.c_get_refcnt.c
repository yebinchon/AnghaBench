
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IUri ;


 int IUri_AddRef (int *) ;
 int IUri_Release (int *) ;

__attribute__((used)) static inline ULONG get_refcnt(IUri *uri) {
    IUri_AddRef(uri);
    return IUri_Release(uri);
}
