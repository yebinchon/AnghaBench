
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* yMax; void* xMax; void* yMin; void* xMin; } ;
typedef TYPE_1__ FT_BBox ;


 void* INT_MAX ;
 void* INT_MIN ;

__attribute__((used)) static inline void BBoxInit( FT_BBox *p_box )
{
    p_box->xMin = INT_MAX;
    p_box->yMin = INT_MAX;
    p_box->xMax = INT_MIN;
    p_box->yMax = INT_MIN;
}
