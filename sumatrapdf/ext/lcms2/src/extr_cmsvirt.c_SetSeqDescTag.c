
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ cmsTechnologySignature ;
typedef void* cmsSignature ;
struct TYPE_7__ {TYPE_1__* seq; } ;
typedef TYPE_2__ cmsSEQ ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_6__ {int Model; int Manufacturer; scalar_t__ technology; scalar_t__* attributes; void* deviceModel; void* deviceMfg; } ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteProfileSequence (int ,int ,TYPE_2__*) ;
 TYPE_2__* cmsAllocProfileSequenceDescription (int ,int) ;
 int cmsFreeProfileSequenceDescription (int ,TYPE_2__*) ;
 int cmsMLUsetASCII (int ,int ,int ,int ,char const*) ;
 int cmsNoCountry ;
 int cmsNoLanguage ;

__attribute__((used)) static
cmsBool SetSeqDescTag(cmsContext ContextID, cmsHPROFILE hProfile, const char* Model)
{
    cmsBool rc = FALSE;
    cmsSEQ* Seq = cmsAllocProfileSequenceDescription(ContextID, 1);

    if (Seq == ((void*)0)) return FALSE;

    Seq->seq[0].deviceMfg = (cmsSignature) 0;
    Seq->seq[0].deviceModel = (cmsSignature) 0;





    Seq->seq[0].attributes = 0;


    Seq->seq[0].technology = (cmsTechnologySignature) 0;

    cmsMLUsetASCII(ContextID, Seq->seq[0].Manufacturer, cmsNoLanguage, cmsNoCountry, "Little CMS");
    cmsMLUsetASCII(ContextID, Seq->seq[0].Model, cmsNoLanguage, cmsNoCountry, Model);

    if (!_cmsWriteProfileSequence(ContextID, hProfile, Seq)) goto Error;

    rc = TRUE;

Error:
    if (Seq)
        cmsFreeProfileSequenceDescription(ContextID, Seq);

    return rc;
}
