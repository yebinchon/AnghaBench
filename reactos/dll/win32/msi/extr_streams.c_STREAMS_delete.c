
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSISTREAMSVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,struct tagMSIVIEW*) ;
 int msi_free (int *) ;

__attribute__((used)) static UINT STREAMS_delete(struct tagMSIVIEW *view)
{
    MSISTREAMSVIEW *sv = (MSISTREAMSVIEW *)view;

    TRACE("(%p)\n", view);

    msi_free(sv);
    return ERROR_SUCCESS;
}
