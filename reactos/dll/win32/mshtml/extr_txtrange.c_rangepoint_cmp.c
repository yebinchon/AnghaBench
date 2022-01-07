
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ node; scalar_t__ off; } ;
typedef TYPE_1__ rangepoint_t ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL rangepoint_cmp(const rangepoint_t *point1, const rangepoint_t *point2)
{
    return point1->node == point2->node && point1->off == point2->off;
}
