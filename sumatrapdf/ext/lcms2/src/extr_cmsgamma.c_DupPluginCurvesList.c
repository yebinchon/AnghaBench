
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cmsContext_struct {int MemPool; scalar_t__* chunks; } ;
struct TYPE_4__ {struct TYPE_4__* ParametricCurves; struct TYPE_4__* Next; int * member_0; } ;
typedef TYPE_1__ _cmsParametricCurvesCollection ;
typedef TYPE_1__ _cmsCurvesPluginChunkType ;


 size_t CurvesPlugin ;
 int _cmsAssert (int ) ;
 scalar_t__ _cmsSubAllocDup (int ,TYPE_1__*,int) ;

__attribute__((used)) static
void DupPluginCurvesList(struct _cmsContext_struct* ctx,
                                               const struct _cmsContext_struct* src)
{
   _cmsCurvesPluginChunkType newHead = { ((void*)0) };
   _cmsParametricCurvesCollection* entry;
   _cmsParametricCurvesCollection* Anterior = ((void*)0);
   _cmsCurvesPluginChunkType* head = (_cmsCurvesPluginChunkType*) src->chunks[CurvesPlugin];

    _cmsAssert(head != ((void*)0));


   for (entry = head->ParametricCurves;
        entry != ((void*)0);
        entry = entry ->Next) {

            _cmsParametricCurvesCollection *newEntry = ( _cmsParametricCurvesCollection *) _cmsSubAllocDup(ctx ->MemPool, entry, sizeof(_cmsParametricCurvesCollection));

            if (newEntry == ((void*)0))
                return;


            newEntry -> Next = ((void*)0);
            if (Anterior)
                Anterior -> Next = newEntry;

            Anterior = newEntry;

            if (newHead.ParametricCurves == ((void*)0))
                newHead.ParametricCurves = newEntry;
    }

  ctx ->chunks[CurvesPlugin] = _cmsSubAllocDup(ctx->MemPool, &newHead, sizeof(_cmsCurvesPluginChunkType));
}
