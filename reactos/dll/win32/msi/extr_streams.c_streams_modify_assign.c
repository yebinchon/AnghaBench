
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
typedef int MSISTREAMSVIEW ;
typedef int MSIRECORD ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ STREAMS_insert_row (struct tagMSIVIEW*,int *,int,int ) ;
 scalar_t__ streams_find_row (int *,int *,int *) ;
 scalar_t__ streams_modify_update (struct tagMSIVIEW*,int *) ;

__attribute__((used)) static UINT streams_modify_assign(struct tagMSIVIEW *view, MSIRECORD *rec)
{
    MSISTREAMSVIEW *sv = (MSISTREAMSVIEW *)view;
    UINT r;

    r = streams_find_row( sv, rec, ((void*)0) );
    if (r == ERROR_SUCCESS)
        return streams_modify_update(view, rec);

    return STREAMS_insert_row(view, rec, -1, FALSE);
}
