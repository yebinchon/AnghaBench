
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsContext ;
struct TYPE_6__ {struct TYPE_6__* Next; } ;
typedef TYPE_1__ _cmsParametricCurvesCollection ;
struct TYPE_7__ {TYPE_1__* ParametricCurves; } ;
typedef TYPE_2__ _cmsCurvesPluginChunkType ;


 int CurvesPlugin ;
 TYPE_1__ DefaultCurves ;
 int IsInSet (int,TYPE_1__*) ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;

__attribute__((used)) static
_cmsParametricCurvesCollection *GetParametricCurveByType(cmsContext ContextID, int Type, int* index)
{
    _cmsParametricCurvesCollection* c;
    int Position;
    _cmsCurvesPluginChunkType* ctx = ( _cmsCurvesPluginChunkType*) _cmsContextGetClientChunk(ContextID, CurvesPlugin);

    for (c = ctx->ParametricCurves; c != ((void*)0); c = c ->Next) {

        Position = IsInSet(Type, c);

        if (Position != -1) {
            if (index != ((void*)0))
                *index = Position;
            return c;
        }
    }

    for (c = &DefaultCurves; c != ((void*)0); c = c ->Next) {

        Position = IsInSet(Type, c);

        if (Position != -1) {
            if (index != ((void*)0))
                *index = Position;
            return c;
        }
    }

    return ((void*)0);
}
