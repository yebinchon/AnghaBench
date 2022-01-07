
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ areEqual; int blob2; int blob1; } ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ CertCompareIntegerBlob (int *,int *) ;
 TYPE_1__* intBlobs ;
 int ok (int,char*,size_t,char*) ;

__attribute__((used)) static void testCompareIntegerBlob(void)
{
    DWORD i;
    BOOL ret;

    for (i = 0; i < ARRAY_SIZE(intBlobs); i++)
    {
        ret = CertCompareIntegerBlob(&intBlobs[i].blob1, &intBlobs[i].blob2);
        ok(ret == intBlobs[i].areEqual,
         "%d: expected blobs %s compare\n", i, intBlobs[i].areEqual ?
         "to" : "not to");
    }
}
