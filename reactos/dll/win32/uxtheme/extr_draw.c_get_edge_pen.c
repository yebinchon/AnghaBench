
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTHEME ;
typedef int HPEN ;


 int CreatePen (int ,int,int ) ;
 int PS_SOLID ;
 int get_edge_color (int,int ,int,int) ;

__attribute__((used)) static inline HPEN get_edge_pen (int edgeType, HTHEME theme, int part, int state)
{
    return CreatePen (PS_SOLID, 1, get_edge_color (edgeType, theme, part, state));
}
