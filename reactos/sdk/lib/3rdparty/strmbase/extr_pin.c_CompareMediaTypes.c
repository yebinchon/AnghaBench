
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int subtype; int majortype; } ;
typedef int BOOL ;
typedef TYPE_1__ AM_MEDIA_TYPE ;


 int GUID_NULL ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int TRACE (char*) ;
 int dump_AM_MEDIA_TYPE (TYPE_1__ const*) ;

__attribute__((used)) static BOOL CompareMediaTypes(const AM_MEDIA_TYPE * pmt1, const AM_MEDIA_TYPE * pmt2, BOOL bWildcards)
{
    TRACE("pmt1: ");
    dump_AM_MEDIA_TYPE(pmt1);
    TRACE("pmt2: ");
    dump_AM_MEDIA_TYPE(pmt2);
    return (((bWildcards && (IsEqualGUID(&pmt1->majortype, &GUID_NULL) || IsEqualGUID(&pmt2->majortype, &GUID_NULL))) || IsEqualGUID(&pmt1->majortype, &pmt2->majortype)) &&
            ((bWildcards && (IsEqualGUID(&pmt1->subtype, &GUID_NULL) || IsEqualGUID(&pmt2->subtype, &GUID_NULL))) || IsEqualGUID(&pmt1->subtype, &pmt2->subtype)));
}
