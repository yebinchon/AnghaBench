
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Level; } ;
typedef TYPE_1__ MSIFEATURE ;
typedef scalar_t__ INT ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_feature_selected( MSIFEATURE *feature, INT level )
{
    return (feature->Level > 0 && feature->Level <= level);
}
