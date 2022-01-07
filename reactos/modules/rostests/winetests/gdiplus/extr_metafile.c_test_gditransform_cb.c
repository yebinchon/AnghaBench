
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xform ;
typedef int rectangle ;
struct TYPE_3__ {double member_0; double member_3; int member_5; int member_4; int member_2; int member_1; } ;
typedef TYPE_1__ XFORM ;
struct TYPE_4__ {int member_2; int member_3; int member_1; int member_0; } ;
typedef TYPE_2__ RECTL ;
typedef int GpStatus ;
typedef int GpMetafile ;
typedef int EmfPlusRecordType ;


 int EMR_RECTANGLE ;
 int EMR_SETWORLDTRANSFORM ;
 int GdipPlayMetafileRecord (int *,int ,int ,int,void*) ;
 int Ok ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_gditransform_cb(GpMetafile* metafile, EmfPlusRecordType record_type,
    unsigned int flags, unsigned int dataSize, const unsigned char *pStr)
{
    static const XFORM xform = {0.5, 0, 0, 0.5, 0, 0};
    static const RECTL rectangle = {0,0,100,100};
    GpStatus stat;

    stat = GdipPlayMetafileRecord(metafile, EMR_SETWORLDTRANSFORM, 0, sizeof(xform), (void*)&xform);
    expect(Ok, stat);

    stat = GdipPlayMetafileRecord(metafile, EMR_RECTANGLE, 0, sizeof(rectangle), (void*)&rectangle);
    expect(Ok, stat);
}
