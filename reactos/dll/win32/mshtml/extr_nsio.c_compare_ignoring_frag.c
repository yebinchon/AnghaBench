
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUri ;
typedef int BOOL ;


 int FALSE ;
 int IUri_IsEqual (int *,int *,int *) ;
 int IUri_Release (int *) ;
 int * get_uri_nofrag (int *) ;

__attribute__((used)) static BOOL compare_ignoring_frag(IUri *uri1, IUri *uri2)
{
    IUri *uri_nofrag1, *uri_nofrag2;
    BOOL ret = FALSE;

    uri_nofrag1 = get_uri_nofrag(uri1);
    if(!uri_nofrag1)
        return FALSE;

    uri_nofrag2 = get_uri_nofrag(uri2);
    if(uri_nofrag2) {
        IUri_IsEqual(uri_nofrag1, uri_nofrag2, &ret);
        IUri_Release(uri_nofrag2);
    }

    IUri_Release(uri_nofrag1);
    return ret;
}
